// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mytask/screens/home/widgets/get_started.dart';
import 'package:mytask/screens/home/widgets/tasks.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GetStarted(),
          Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
              'Tasks',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold),
            ),
          ),
         Expanded(child: Tasks())
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(left: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/user-avatar.jpg')),
          ),
          const SizedBox(width: 10),
          const Text(
            'Hi, User !',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: const [Icon(Icons.more_vert, color: Colors.black, size: 37)],
    );
  }
}
