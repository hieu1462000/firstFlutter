import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:uuid/uuid.dart';

import 'MessageBody.dart';
import 'MessageBottom.dart';
import 'entities/message.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "First app",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){

            },),
            title: Center(
              child: Text("Admin",style: TextStyle(
                fontSize: 20
              ),),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: (){

                },),
              )
            ],
          ),
          body: MyBody(),
            ),
          );
  }
}


