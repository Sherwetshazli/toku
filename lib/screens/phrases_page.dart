import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Phrases> numbers = const [
    Phrases(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Chichioya',
      enName: 'are you coming',
    ),
    Phrases(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Chan\'neru tōroku o o wasurenaku',
      enName: 'Don\'t forget to subscribe',
    ),
    Phrases(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
    ),
    Phrases(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Anime ga daisukidesu',
        enName: 'I love anime'),
    Phrases(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Puroguramingu ga daisukidesu.',
      enName: 'I love programming',
    ),
    Phrases(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu.',
      enName: 'Programming is easy',
    ),
    Phrases(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Anata no namae wa nanidesu ka?',
      enName: 'what is your name?',
    ),
    Phrases(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going',
    ),
    Phrases(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, ikimasu.',
      enName: 'Yes, I am coming',
    ),

  ];
  /*final Number one = Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one');*/
  // This widget is the root of your application.
  /*List<String> sounds =[
    '',
    '',
    '',

  ];*/
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
          'Phrases',
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
      body: Column(
        children: [
      Expanded(
          child:ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),

        itemCount: numbers.length,

      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
        itemBuilder: (context, num) {
          // print(num);
          return PhrasesItem(
            const Color(0xFFFFF8E1),
            // sound : sounds[num] ,
            number: numbers[num],
          );
        },
    ))]
        //children: getList(numbers),
        /*[

         /* Item(number: numbers[0]),
          Item(number: numbers[1]),
          Item(number: numbers[2]),
          Item(number: numbers[3]),
          Item(number: numbers[4]),
          Item(number: numbers[5]),
          Item(number: numbers[6]),
          Item(number: numbers[7]),
          Item(number: numbers[8]),
          Item(number: numbers[9]),
          */
        ],
        */
      ),
    );
  }

  /*List<Widget> getList(List<Number> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(Item(number: numbers[i]));
    }
    return itemsList;
  }
  */
}
