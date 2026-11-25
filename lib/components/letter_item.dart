import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class LetterItem extends StatelessWidget {
  const LetterItem({
    super.key,
    required this.letter,
  });

  final Lettersid letter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              letter.image,
              fit: BoxFit.contain,
            ),
          ),
        ),

        const SizedBox(height: 4),

        Text(
          letter.jpName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color:  Color(0xFFEF6C00),
          ),
        ),
      ],
    );
  }
}