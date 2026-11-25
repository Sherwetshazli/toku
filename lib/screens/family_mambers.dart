import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<FamilyMember> numbers = const [
    FamilyMember(
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),
    FamilyMember(
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),

    FamilyMember(
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Museume',
      enName: 'Daughter',
    ),
    FamilyMember(
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
    FamilyMember(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Ojisan',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    FamilyMember(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sobo',
        enName: 'Grand mother'),
    FamilyMember(
      sound: 'sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older brother',
    ),
    FamilyMember(
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older sister',
    ),
    FamilyMember(
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger brother',
    ),
    FamilyMember(
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger sister',
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
          'Family Members',
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
      body:  ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 5,
          ),

          itemCount: numbers.length,

          separatorBuilder: (context, index) {
            return const SizedBox(height: 12);
          },

          itemBuilder: (context, num) {
          // print(num);
          return Item(
            const Color(0xFFFFF8E1),
            // sound : sounds[num] ,
            number: numbers[num],
          );
        },

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
