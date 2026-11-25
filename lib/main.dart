
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:toku/screens/home_page.dart';

import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/family_mambers.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/screens/login.dart';
import 'package:toku/screens/get_start_page.dart';
import 'package:toku/screens/letters_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    debugPrint('Firebase Connected Successfully!');
  } catch (e) {
    debugPrint('Firebase Error: $e');
  }

  runApp(TokuApp());
}


class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: GoogleFonts.fredoka().fontFamily,
      ),

      home: HomePage(),
    );
  }
}
