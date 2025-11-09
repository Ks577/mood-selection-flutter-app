import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('he'),
    Locale('hi'),
    Locale('ru'),
    Locale('uk'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Mood Advice'**
  String get appTitle;

  /// No description provided for @askMood.
  ///
  /// In en, this message translates to:
  /// **'What\'s your mood today?'**
  String get askMood;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'🔄 Reset'**
  String get reset;

  /// No description provided for @adviceHappy1.
  ///
  /// In en, this message translates to:
  /// **'Smile, enjoy the moment 😃'**
  String get adviceHappy1;

  /// No description provided for @adviceHappy2.
  ///
  /// In en, this message translates to:
  /// **'Find joy in small things 🌸'**
  String get adviceHappy2;

  /// No description provided for @adviceHappy3.
  ///
  /// In en, this message translates to:
  /// **'Share your smile with others 💫'**
  String get adviceHappy3;

  /// No description provided for @adviceSad1.
  ///
  /// In en, this message translates to:
  /// **'Sadness passes, everything will be fine 💙'**
  String get adviceSad1;

  /// No description provided for @adviceSad2.
  ///
  /// In en, this message translates to:
  /// **'Take your time, don\'t rush 🌿'**
  String get adviceSad2;

  /// No description provided for @adviceSad3.
  ///
  /// In en, this message translates to:
  /// **'Hang in there, it will be okay ⏳'**
  String get adviceSad3;

  /// No description provided for @adviceAngry1.
  ///
  /// In en, this message translates to:
  /// **'Count to ten and calm down 🔟'**
  String get adviceAngry1;

  /// No description provided for @adviceAngry2.
  ///
  /// In en, this message translates to:
  /// **'Take a deep breath 🌬️'**
  String get adviceAngry2;

  /// No description provided for @adviceAngry3.
  ///
  /// In en, this message translates to:
  /// **'Do something fun ✨'**
  String get adviceAngry3;

  /// No description provided for @adviceCool1.
  ///
  /// In en, this message translates to:
  /// **'Keep confidence in yourself 😎'**
  String get adviceCool1;

  /// No description provided for @adviceCool2.
  ///
  /// In en, this message translates to:
  /// **'Stay calm and collected 💎'**
  String get adviceCool2;

  /// No description provided for @adviceCool3.
  ///
  /// In en, this message translates to:
  /// **'Act confidently, it will work ✨'**
  String get adviceCool3;

  /// No description provided for @adviceTired1.
  ///
  /// In en, this message translates to:
  /// **'Drink water, take a break 💧'**
  String get adviceTired1;

  /// No description provided for @adviceTired2.
  ///
  /// In en, this message translates to:
  /// **'Take a short rest, it’s important 🛌'**
  String get adviceTired2;

  /// No description provided for @adviceTired3.
  ///
  /// In en, this message translates to:
  /// **'Let yourself relax a bit 🔋'**
  String get adviceTired3;

  /// No description provided for @langEn.
  ///
  /// In en, this message translates to:
  /// **'English 🇬🇧'**
  String get langEn;

  /// No description provided for @langRu.
  ///
  /// In en, this message translates to:
  /// **'Russian 🇷🇺'**
  String get langRu;

  /// No description provided for @langUk.
  ///
  /// In en, this message translates to:
  /// **'Ukrainian 🇺🇦'**
  String get langUk;

  /// No description provided for @langHe.
  ///
  /// In en, this message translates to:
  /// **'Hebrew 🇮🇱'**
  String get langHe;

  /// No description provided for @langHi.
  ///
  /// In en, this message translates to:
  /// **'Hindi 🇮🇳'**
  String get langHi;

  /// No description provided for @langEs.
  ///
  /// In en, this message translates to:
  /// **'Spanish 🇪🇸'**
  String get langEs;

  /// No description provided for @langAr.
  ///
  /// In en, this message translates to:
  /// **'Arabic 🌐'**
  String get langAr;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'en',
    'es',
    'he',
    'hi',
    'ru',
    'uk',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'ru':
      return AppLocalizationsRu();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
