import 'package:flutter/material.dart';
import 'package:todo_list_app/models/taskdata.dart';
import 'package:todo_list_app/widgets/tasktile_widget.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:provider/provider.dart';

class Tasklist extends StatefulWidget {
  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Consumer<TaskData>(builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              text: task.text,
              checkUp: task.isDone as bool,
              onChanged: (value) {
                taskData.updateTask(task);
              },
              onLongPress: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }),
    );
  }
}
