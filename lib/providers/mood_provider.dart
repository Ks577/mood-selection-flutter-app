import 'dart:math';
import 'package:flutter/material.dart';
import '../helpers/mood_helper.dart';

class MoodProvider extends ChangeNotifier {
  String? _selectedMood;
  int? _adviceIndex;

  Locale _locale = const Locale('en');
  LinearGradient? _backgroundGradient;

  String? get selectedMood => _selectedMood;

  int? get adviceIndex => _adviceIndex;

  Locale get locale => _locale;

  LinearGradient? get backgroundGradient => _backgroundGradient;

  void changeLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }

  void chooseMood(String mood) {
    _selectedMood = mood;
    _backgroundGradient = MoodHelper.gradientMap()[mood]!;
    _adviceIndex = Random().nextInt(3);
    notifyListeners();
  }

  void resetMood() {
    _selectedMood = null;
    _adviceIndex = null;
    _backgroundGradient = null;
    notifyListeners();
  }
}
