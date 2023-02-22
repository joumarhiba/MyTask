import 'package:flutter/material.dart';
import 'package:mytask/constants/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  String? type;
  num? done;
  num? trash;
  bool isLast;


  Task({this.bgColor, this.iconColor, this.iconData, this.title, this.btnColor, this.isLast = false, this.done, this.trash, this.type});

static List<Task> generateTasks() {
  return [
Task(
  iconData: Icons.person_rounded,
  title: 'to do something programmation ...',
  type: 'Elevé',
  bgColor: kRedLight,
  iconColor: kRedDark,
  btnColor: kRed,
  done: 1,
  trash: 3,
  ),
  Task(
    iconData: Icons.person_rounded,
    title: 'to do something laundry ...',
    type: 'Normal',
    bgColor: kYellowLight,
    iconColor: kYellowDark,
    btnColor: kYellow,
    done: 2,
    trash: 1,
    )
];
}

}
