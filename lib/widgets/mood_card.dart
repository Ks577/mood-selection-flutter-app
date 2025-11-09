import 'package:flutter/material.dart';
import '../helpers/emoji.dart';

class MoodCard extends StatelessWidget {
  final String mood;
  final bool isSelected;
  final VoidCallback onTap;

  const MoodCard({
    super.key,
    required this.mood,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.black26 : Colors.grey,
            width: isSelected ? 2 : 2,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 6,
              offset: Offset(2, 2),
            ),
          ],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(MoodGifs.map[mood]!, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
