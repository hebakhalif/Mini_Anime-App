import 'package:flutter/material.dart';

class TopCharacters extends StatelessWidget {
  final String imagePath;
  final String nameAnime;
  final String textUnder;

  const TopCharacters({
    super.key,
    required this.imagePath,
    required this.nameAnime,
    required this.textUnder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 35, // حجم الدائرة
          backgroundImage: AssetImage(imagePath),
        ),
        Text(
          nameAnime,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          textUnder,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
