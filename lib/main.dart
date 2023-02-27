import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/taskdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(create: (context){
      return TaskData();
    },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

