import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:uuid/uuid.dart';


class MyBottom extends StatefulWidget {
  final Function( ) scrollToBottom;

  const MyBottom({Key key, this.scrollToBottom,}) : super(key: key);
  @override
  _MyBottomState createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _messageController = TextEditingController();
  List<Asset> images = List<Asset>();
  PickedFile imageFile;


  //TODO: upload images to firebase
  Future saveImage(List<Asset> asset) async {
    UploadTask uploadTask;
    List<String> linkImage = [];
    for (var value in asset) {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference ref = FirebaseStorage.instance.ref().child(fileName);
      ByteData byteData = await value.requestOriginal(quality: 70);
      var imageData = byteData.buffer.asUint8List();
      uploadTask = ref.putData(imageData);
      String imageUrl;
      await (await uploadTask.whenComplete(() {
        imageUrl = ref.getDownloadURL() as String;
      }));
      linkImage.add(imageUrl);
    }
    return linkImage;
  }

  //TODO: pick image from lib
  Future<void> pickImages() async {
    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          allViewTitle: "All Photos",
        ),
      );
    } on Exception catch (e) {}
    //if (!mounted) return;
    setState(() {
      images = resultList;
    });
  }

  //TODO: space for image
  Widget imageGridView() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return Padding(
          padding: EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              //TODO: image
              AssetThumb(
                asset: asset,
                width: 300,
                height: 300,
              ),
              //TODO: close
              GestureDetector(
                onTap: () {
                  setState(() {
                    images.removeAt(index);
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.close, color: Colors.black, size: 18)),
              )
            ],
          ),
        );
      }),
    );
  }

  //TODO: send mess
  void sendMessage() async {
    String messageId = Uuid().v1();
    if (images.length != 0) {
      List<String> listImages = await saveImage(images);
      _messageController.clear();
      setState(() {
        images.clear();
      });
      await _firestore.collection("messages").doc(messageId).set({
        "id": messageId,
        "fromId": '123456',
        "content": _messageController.text,
        "createdAt": Timestamp.now(),
        "imagesList": listImages
      }).then((value) => print("success"));
    } else if(_messageController.text != null && _messageController.text != '') {
      await _firestore.collection("messages").doc(messageId).set({
        "id": messageId,
        "fromId": '123456',
        "content": _messageController.text,
        "createdAt": Timestamp.now(),
        "imagesList": []
      }).then((value) => print("success"));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: (images.length != 0) ? imageGridView() : Container(),
          ),
          Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.camera_alt_rounded), onPressed: (){
                  }),
                  IconButton(icon: Icon(Icons.photo), onPressed: (){
                    pickImages();
                  }),
                  Expanded(
                    child:
                    Padding(
                      padding: EdgeInsets.only(left:20),
                      child: TextField(
                        controller: _messageController,
                        autofocus: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            hintText: 'Aa'
                        ),
                      ),
                    ),),
                  IconButton(icon: Icon(Icons.send), onPressed: (){
                    sendMessage();
                   _messageController.clear();
                   widget.scrollToBottom();
                  }),
                ],
              )
          ),
        ],
      ),
    );
  }
}