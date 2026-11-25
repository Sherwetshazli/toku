
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {

  Category({
    required this.text,
    required this.color,
    required this.image,
    this.onTap,
  });

  final String text;
  final Color color;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(22),

          border: Border.all(
            color: Colors.white,
            width: 2,
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 100,
              width: 110,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 12),

        Text(
          text,
          style: GoogleFonts.fredoka(
            fontSize: 18,
            color: Color(0xff796D62),)
          ),
          ],
        ),


      ),
    );
  }
}
