import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tune/widgets/item.dart';

import '../models/tune_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: "note1.wav"),
    TuneModel(color: Colors.orange, sound: "note2.wav"),
    TuneModel(color: Colors.yellow, sound: "note3.wav"),
    TuneModel(color: Colors.green, sound: "note4.wav"),
    TuneModel(color: Colors.greenAccent, sound: "note5.wav"),
    TuneModel(color: Colors.blueAccent, sound: "note6.wav"),
    TuneModel(color: Colors.purple, sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Center(
          child: Text("Flutter Tune"),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tune: e),
        )
            .toList(),
      ),
    );
  }
}
