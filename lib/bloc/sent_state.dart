import 'package:equatable/equatable.dart';

abstract class SentState extends Equatable {

  const SentState();

  @override
  List<Object> get props => [];


}

class LoadMessages extends SentState {

}