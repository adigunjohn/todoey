import 'dart:collection';
import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart'; -- this is inbuilt with the material.dart, so you can use either.
import 'package:todo_list_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(text: 'Save some dollars every week'),
    Task(text: 'Work your ass off bro, you are broke'),
    Task(text: 'It\'s either i make it or make it'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void updateAddNewTask (String newlyAddedTask){
    final task = Task(text: newlyAddedTask);
    _tasks.add(task);
    notifyListeners();
  }
  void deleteTask (Task task){
    _tasks.remove(task);
    notifyListeners();
  }
   void updateTask (Task task){
    task.changeIsDone();
    notifyListeners();
   }
}