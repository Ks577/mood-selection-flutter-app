import 'package:flutter/material.dart';
import 'package:mood_advice/const/gradients.dart';
import 'package:provider/provider.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import '../helpers/language_name.dart';
import '../helpers/mood_helper.dart';
import '../l10n/app_localizations.dart';
import '../providers/mood_provider.dart';
import '../widgets/mood_card.dart';

class MoodScreen extends StatelessWidget {
  const MoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    final provider = Provider.of<MoodProvider>(context);

    final languages = LanguageNames.getNames(loc);

    String? advice;

    if (provider.selectedMood != null && provider.adviceIndex != null) {
      final list = MoodHelper.adviceMap(loc)[provider.selectedMood!]!;

      advice = list[provider.adviceIndex!];
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/icon.gif', height: 60),
        actions: [
          PopupMenuButton<String>(
            onSelected: (langCode) {
              provider.changeLocale(Locale(langCode));
            },
            itemBuilder: (_) => languages.entries.map((entry) {
              return PopupMenuItem<String>(
                value: entry.key,
                child: Text(entry.value),
              );
            }).toList(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(languages[provider.locale.languageCode] ?? ''),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: provider.resetMood,
          ),
        ],
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient:
              provider.backgroundGradient ?? MoodGradients.defaultGradient,
        ),
        padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 12),
                Text(
                  loc.askMood,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: StackedCardCarousel(
                    onPageChanged: (_) => provider.resetMood(),
                    items: MoodHelper.moods.map((mood) {
                      final isSelected = mood == provider.selectedMood;
                      return MoodCard(
                        mood: mood,
                        isSelected: isSelected,
                        onTap: () => provider.chooseMood(mood),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 70),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 400),
                    child: provider.selectedMood != null && advice != null
                        ? Container(
                            key: ValueKey(
                              '${provider.selectedMood}_${provider.locale.languageCode}_${provider.adviceIndex}',
                            ),
                            constraints: const BoxConstraints(minHeight: 80),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(bottom: 80),
                            child: Text(
                              MoodHelper.adviceMap(
                                loc,
                              )[provider.selectedMood!]![provider.adviceIndex!],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(), // пустое место, если нет совета
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
