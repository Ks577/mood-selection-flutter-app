import 'package:flutter/material.dart';

class MoodGradients {
  static const defaultGradient = LinearGradient(
    colors: [
      Color(0xffff75c3),
      Color(0xffffa647),
      Color(0xffffe83f),
      Color(0xff9fff5b),
      Color(0xff70e2ff),
      Color(0xffcd93ff),
    ],
    stops: [0, 0.2, 0.4, 0.6, 0.8, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const happy = LinearGradient(
    colors: [Color(0xff833ab4), Color(0xfffd1d1d), Color(0xfffcb045)],
    stops: [0, 0.5, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const sad = LinearGradient(
    colors: [Color(0xff24c6dc), Color(0xff514a9d)],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const angry = LinearGradient(
    colors: [Color(0xffd31027), Color(0xffea384d)],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const cool = LinearGradient(
    colors: [Color(0xff00c3ff), Color(0xffffff1c)],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const tired = LinearGradient(
    colors: [Color(0xffeb5757), Color(0xff000000)],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
