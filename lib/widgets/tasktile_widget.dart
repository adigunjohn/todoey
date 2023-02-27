import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  bool checkUp = false;
  String? text;
  void Function(bool?)? onChanged;
  void Function()? onLongPress;
  TaskTile({required this.text, required this.checkUp, required this.onChanged, required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text.toString(),
        style: TextStyle(
          decoration: checkUp ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(value: checkUp,onChanged: onChanged
      ),
      onLongPress: onLongPress,
    );
  }
}

// class TaskTile extends StatefulWidget {
//   const TaskTile({Key? key}) : super(key: key);
//
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool checkUp = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//           decoration: checkUp ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: Checkbox(value: checkUp,onChanged: (value){
//         setState(() {
//              checkUp = value as bool;
//            });
//       },),
//     );
//   }
// }

///OR


// class TaskTile extends StatefulWidget {
//   const TaskTile({Key? key}) : super(key: key);
//
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
//   bool checkUp = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//           decoration: checkUp ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: CheckBoxx(checkItUp: checkUp, onChanged: (value){
//         setState(() {
//           checkUp = value as bool;
//         });
//       })
//     );
//   }
// }
//
//
// class CheckBoxx extends StatelessWidget {
//   CheckBoxx({required this.checkItUp, required this.onChanged});
//   bool? checkItUp;
//   var onChanged;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: checkItUp,
//         onChanged: onChanged,);
//   }
// }
