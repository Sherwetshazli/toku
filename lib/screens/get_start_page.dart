
import 'package:flutter/material.dart';
import 'package:toku/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          color: Color(0xffFF8C00),
        ),
        child: SafeArea(
          child: Column(
            children: [

              const Spacer(),

              // Image
              Image.asset(
                'lib/img/IMG_5364-1024x671.png',
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 1),

              // Toku text
              Padding(
              padding: const EdgeInsets.only(left: 20),

         child: Text(
                'It\'s your Japanese Adventure ,toku',
                style: GoogleFonts.fredoka(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFF8E1),
                ),
              ),
      ),

              const Spacer(),

              // Get Start Button
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFF8E1),
                    foregroundColor: const Color(0xFFFF8F00),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'GET START',
                    style: GoogleFonts.fredoka(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
