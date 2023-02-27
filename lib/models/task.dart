import 'package:flutter/material.dart';

class Task {
  String? text;
  bool? isDone;
  Task({required this.text, this.isDone = false});

  void changeIsDone (){
    isDone = !isDone!;
  }

}