import 'package:flutter/material.dart';

import '../widgets/exercise_tile.dart';

const list = [
  "squat",
  "deadlift",
  "pull up",
  "deadlift",
  "crunches",
  "dumbell row",
  "squat",
  "deadlift",
  "pull up",
  "deadlift",
  "crunches",
  "dumbell row"
];
const img = ["assets/squat.png"];

class ExcerciseScreen extends StatelessWidget {
  const ExcerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ExerciseTile(index: index),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}


