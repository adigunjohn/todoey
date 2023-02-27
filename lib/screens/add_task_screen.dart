import 'package:flutter/material.dart';
import 'package:todo_list_app/models/taskdata.dart';
import 'package:todo_list_app/widgets/tasklistview_widget.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {

 // Function? addTaskScreenCallBack;
 // AddTaskScreen({this.addTaskScreenCallBack});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? textInputValue;

  final textInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                ),
              ),
              TextField(
                controller: textInputController,
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  print(value);
                  textInputValue = value;
                },
              ),
              SizedBox(
                height: 17.0,
              ),
              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).updateAddNewTask(textInputValue.toString());
                 // widget.addTaskScreenCallBack!(textInputValue);
                 textInputController.clear();
                 Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
