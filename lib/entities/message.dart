import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
  final String id;
  final String fromId;
  final String content;
  final Timestamp createdAt;
  final List<dynamic> imagesList;


  Message( {this.id, this.fromId, this.content,this.createdAt,this.imagesList});
}