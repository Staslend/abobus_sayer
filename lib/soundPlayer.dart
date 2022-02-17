import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

class SoundPlayer {

  List<String> sounds = [
    'assets/audio/nc1.ogg',
    'assets/audio/nc2.ogg',
    'assets/audio/nc3.ogg',
    'assets/audio/nc4.ogg',
    'assets/audio/nc5.ogg',
    'assets/audio/nc6.ogg',
  ];

  playLocal() 
  {
    var r = Random().nextInt(sounds.length);
    debugPrint("Sassy baka "  + r.toString());
    AudioPlayer p = AudioPlayer();
    p.setAsset(sounds.elementAt(r));
    p.play();
  }
}