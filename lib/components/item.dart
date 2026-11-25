/*import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number;

  //final String sound;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text(number.enName,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          );
          IconButton(
            // splashColor: Colors.black,
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(Number.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          )
          /* GestureDetector(
           // padding: const EdgeInsets.only(right: 16),
           onTap: (){

           },
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          ),*/
        ],
      ),
    );
  }
}

//1.0.0
//void sumNumber() {};
*/

import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item(this.color, {Key? key, required this.number}) : super(key: key);
  //final ItemModel item;
  final dynamic number;
  final Color color;
  //final String sound;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 85,
            height: 85,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF8E1),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFFFFF8E1),
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                number.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName,
                    style: TextStyle(color: Color(0xff8B4B27), fontSize: 18 ,fontWeight: FontWeight.bold,)),
                Text(number.enName,
                    style: TextStyle(color: Color(0xff8B4B27), fontSize: 18)),
              ],
            ),
          ), //
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Color(0xff8B4B27),
              size: 24,
            ),
          ),

          // ItemInfo(itemModel: number)
        ],
      ),
    );
  }
}


class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
    required this.number,
  }) : super(key: key);

  final FamilyMember number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: const Color(0xFFFFCC80),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF8E1),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFFFFF8E1),
                width: 2,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                number.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.jpName,
                    style: const TextStyle(
                      color: Color(0xff8B4B27),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    number.enName,
                    style: const TextStyle(
                      color: Color(0xff8B4B27),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color(0xff8B4B27),
              size: 30,
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),
    );
  }
}



class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      this.color, {
        Key? key,
        required this.number,
      }) : super(key: key);

  final Phrases number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Color(0xff8B4B27),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Color(0xff8B4B27),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color(0xff8B4B27),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}


class ColorsItem extends StatelessWidget {
  const ColorsItem(
      this.color, {
        Key? key,
        required this.number,
      }) : super(key: key);

  final Colorsname number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 85,
            height: 85,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF8E1),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFFFFF8E1),
                width: 2,
              ),


            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                number.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.jpName,
                    style: const TextStyle(
                      color: Color(0xff8B4B27),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    number.enName,
                    style: const TextStyle(
                      color: Color(0xff8B4B27),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Color(0xff8B4B27),
              size: 30,
            ),
          ),

          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

