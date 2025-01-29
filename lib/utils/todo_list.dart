import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  const TodoList(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onCHanged,
      required this.deleteFunc});

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onCHanged;
  final Function(BuildContext)? deleteFunc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 0,
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunc,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(12),
          ),
        ]),
        child: Container(
          padding: EdgeInsets.all(20),
          // color: Colors.deepPurple,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Checkbox(
                  value: taskCompleted,
                  onChanged: onCHanged,
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  side: BorderSide(color: Colors.white)),
              Text(
                taskName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: Colors.white,
                    decorationThickness: 2),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
