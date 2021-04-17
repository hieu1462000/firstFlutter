import 'package:equatable/equatable.dart';
import 'package:flutter_app/entities/message.dart';

abstract class SentEvent extends Equatable {
    const SentEvent();

    @override
    List<Object> get props => [];

}

class SendMessages extends SentEvent {
  final String messId;

  SendMessages(this.messId);

  @override
  List<Object> get props => [this.messId];
}

class GetMessages extends SentEvent{
  final List<Message> mess;

  GetMessages(this.mess);

  @override
  List<Object> get props => [this.mess];
}