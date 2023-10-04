import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tune;

  const TuneItem({Key? key, required this.tune}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tune.playSound();
      },
      child: Container(
        color: tune.color ?? Colors.white, // Provide a default color if it's nullable
        child: Center(
          child: Text(
            "Tap to play sound",
            style: TextStyle(color: Colors.black), // Adjust text color as needed
          ),
        ),
      ),
    );
  }
}
