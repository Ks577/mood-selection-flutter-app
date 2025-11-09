import 'package:flutter/material.dart';
import '../const/gradients.dart';

class MoodHelper {
  static const List<String> moods = ["happy", "sad", "angry", "cool", "tired"];

  static Map<String, LinearGradient> gradientMap() {
    return {
      "happy": MoodGradients.happy,
      "sad": MoodGradients.sad,
      "angry": MoodGradients.angry,
      "cool": MoodGradients.cool,
      "tired": MoodGradients.tired,
    };
  }

  static Map<String, List<String>> adviceMap(dynamic loc) {
    return {
      "happy": [loc.adviceHappy1, loc.adviceHappy2, loc.adviceHappy3],
      "sad": [loc.adviceSad1, loc.adviceSad2, loc.adviceSad3],
      "angry": [loc.adviceAngry1, loc.adviceAngry2, loc.adviceAngry3],
      "cool": [loc.adviceCool1, loc.adviceCool2, loc.adviceCool3],
      "tired": [loc.adviceTired1, loc.adviceTired2, loc.adviceTired3],
    };
  }
}