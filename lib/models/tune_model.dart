import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color? color;
  final String? sound;

  const TuneModel(this.color, this.sound);
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound!));
  }
  }

