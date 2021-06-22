import 'package:bootcamp_todoey/models/task.dart';
import 'package:bootcamp_todoey/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
