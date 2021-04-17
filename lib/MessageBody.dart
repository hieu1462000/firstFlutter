import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/MessageBottom.dart';
import 'entities/message.dart';

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Message> messages;
  ScrollController _scrollController = ScrollController();

  @override
  void didUpdateWidget(covariant MyBody oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    Timer(
        Duration(milliseconds: 100),
            () => _scrollController
            .jumpTo(_scrollController.position.maxScrollExtent));
  }

  //TODO: scroll to bottom
  void scrollJump() {
    Timer(
        Duration(milliseconds: 100), (){
           if (_scrollController.hasClients){
              _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
           }
        });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
                child: StreamBuilder(
                    stream: _firestore.collection("messages").orderBy("createdAt").snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        QuerySnapshot data = snapshot.data;
                        messages = data.docs.map((item) => Message(
                                id: item.data()["id"],
                                fromId: item.data()["fromId"],
                                content: item.data()["content"],
                                imagesList: item.data()['imagesList'],
                                createdAt: item.data()["createdAt"])).toList();

                        return ListView.builder(
                          controller: _scrollController,
                            shrinkWrap: true,
                            itemCount: messages.length,
                            itemBuilder: (context, index) {
                              return Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: 20, left: 100, right: 10),
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.greenAccent,
                                      ),
                                      child:
                                      Column(
                                        children: [
                                          Text(
                                            messages[index].content,
                                            style: TextStyle(fontSize: 20),
                                            maxLines: null,
                                            textWidthBasis: TextWidthBasis.longestLine,
                                          ),
                                          // Container(
                                          //   child: CachedNetworkImage(
                                          //     imageUrl: messages[index].imagesList as String,
                                          //     placeholder: (context, url) => Container(
                                          //       child: Center(
                                          //         child: CircularProgressIndicator(),
                                          //       ),
                                          //     ),
                                          //     errorWidget: (context, url, error) => Icon(Icons.error),
                                          //   ),
                                          // )
                                        ],
                                      ),
                                    ));
                            });
                      }
                      return Text("Loading");
                    })),
          ),

          MyBottom(scrollToBottom:scrollJump)
        ],
      ),
    );
  }
}
