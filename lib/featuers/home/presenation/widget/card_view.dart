import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String imagePath;
  final String nameAnime;
  final String textUnder;

  const CardView({
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
        ClipRRect(
          borderRadius: BorderRadius.circular(
            20,
          ), 
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
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
