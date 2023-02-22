import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../models/task.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();
  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddTask() {
    return const Text('Add task');
  }

  Widget _buildTask(BuildContext context, Task task) {
    return const Text('Task');
  }
}
