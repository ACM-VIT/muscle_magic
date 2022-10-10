import 'package:flutter/material.dart';

import '../widgets/circular_progress_bar.dart';

const list = [
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
    return  Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              title: Text(list[index],style: const TextStyle(color: Colors.white,),),
              leading: Image.asset(img[0])
            ),
          );
        },
        itemCount: list.length,
      ),);
  }
}


