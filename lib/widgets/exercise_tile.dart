import 'package:flutter/material.dart';

import '../screens/excercise_screen.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        list[index],
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      leading: Image.asset(img[0]),
      tileColor: const Color(0xFF243B53),
    );
  }
}