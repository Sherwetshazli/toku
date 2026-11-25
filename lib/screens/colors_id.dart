import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class ColorsnamePage extends StatelessWidget {
  const ColorsnamePage({Key? key}) : super(key: key);

  final List<Colorsname> numbers = const [
Colorsname(
      sound: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
    ),
Colorsname(
      sound: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),

Colorsname(
      sound: 'sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kusunda kiiro',
      enName: 'Dusty Yallow',
    ),
Colorsname(
      sound: 'sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
    ),
Colorsname(
      sound: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
Colorsname(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
Colorsname(
      sound: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
    ),
Colorsname(
      sound: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yallow',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white ,

        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xFFEF6C00),

          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),

          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),

      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),

        itemCount: numbers.length,

        separatorBuilder: (context, index) {
          return const SizedBox(height: 12);
        },


        itemBuilder: (context, index) {
          return ColorsItem(
            const Color(0xFFFFF8E1),
            number: numbers[index],
          );
        },
      ),
        );
            } }