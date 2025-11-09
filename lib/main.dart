import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mood_advice/providers/mood_provider.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';
import 'screens/mood_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => MoodProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final moodProvider = Provider.of<MoodProvider>(context);
    return MaterialApp(
      title: 'Mood Advice',
      debugShowCheckedModeBanner: false,
      locale: moodProvider.locale,
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
        Locale('uk'),
        Locale('he'),
        Locale('hi'),
        Locale('es'),
        Locale('ar'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MoodScreen(),
    );
  }
}
