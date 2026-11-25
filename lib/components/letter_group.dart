import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/components/letter_item.dart';

class LetterGroup extends StatelessWidget {
  const LetterGroup({
    super.key,
    required this.title,
    required this.letters,
  });

  final String title;
  final List<Lettersid> letters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEF6C00),
            ),
          ),

          const Divider(),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),

            itemCount: letters.length,

            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              childAspectRatio: 0.65,
            ),

            itemBuilder: (context, index) {
              return LetterItem(
                letter: letters[index],
              );
            },
          ),
        ],
      ),
    );
  }
}