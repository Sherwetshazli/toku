import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';
import 'package:toku/components/letter_group.dart';
import 'package:toku/components/letter_item.dart';
import 'package:audioplayers/audioplayers.dart';

class LettersidPage extends StatefulWidget {
  const LettersidPage({Key? key}) : super(key: key);

  @override
  State<LettersidPage> createState() => _LettersidPageState();
}

class _LettersidPageState extends State<LettersidPage> {
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
  final AudioPlayer player = AudioPlayer();
  Future<void> playAllLetters() async {
    await player.stop();

    await player.play(
      AssetSource('sounds/letters/Gojuon.mp3'),
    );
  }
  final List<Lettersid> letters = const [
    Lettersid(
      image: 'assets/images/letters/a.jpg',
      jpName: 'a',
    ),
    Lettersid(
      image: 'assets/images/letters/i.jpg',
      jpName: 'i',
    ),
    Lettersid(
      image: 'assets/images/letters/u.jpg',
      jpName: 'u',
    ),

    Lettersid(
      image: 'assets/images/letters/e.jpg',
      jpName: 'e',
    ),

    Lettersid(
      jpName: 'o',
      image: 'assets/images/letters/o.jpg',
    ),
    // ----------------------
    Lettersid(
        image: 'assets/images/letters/ka.jpg',
        jpName: 'ka',
     ),
    Lettersid(
      image: 'assets/images/letters/ki.jpg',
      jpName: 'ki',
    ),
    Lettersid(
      image: 'assets/images/letters/ku.jpg',
      jpName: 'ku',
    ),
    Lettersid(
      image: 'assets/images/letters/ke.jpg',
      jpName: 'ke',
    ),
    Lettersid(
      image: 'assets/images/letters/ko.jpg',
      jpName: 'ko',
    ),
  //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/sa.jpg',
      jpName: 'sa',
    ),
    Lettersid(
      image: 'assets/images/letters/shi.jpg',
      jpName: 'shi',
    ),
    Lettersid(
      image: 'assets/images/letters/su.jpg',
      jpName: 'su',
    ),
    Lettersid(
      image: 'assets/images/letters/se.jpg',
      jpName: 'se',
    ),
    Lettersid(
      image: 'assets/images/letters/so.jpg',
      jpName: 'so',
    ),
    //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/ta.jpg',
      jpName: 'ta',
    ),
    Lettersid(
      image: 'assets/images/letters/chi.jpg',
      jpName: 'chi',
    ),
    Lettersid(
      image: 'assets/images/letters/tsu.jpg',
      jpName: 'tsu',
    ),
    Lettersid(
      image: 'assets/images/letters/te.jpg',
      jpName: 'te',
    ),
    Lettersid(
      image: 'assets/images/letters/to.jpg',
      jpName: 'to',
    ),
    //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/na.jpg',
      jpName: 'na',
    ),
    Lettersid(
      image: 'assets/images/letters/ni.jpg',
      jpName: 'ni',
    ),
    Lettersid(
      image: 'assets/images/letters/nu.jpg',
      jpName: 'nu',
    ),

    Lettersid(
      image: 'assets/images/letters/ne.jpg',
      jpName: 'ne',
    ),

    Lettersid(
      jpName: 'no',
      image: 'assets/images/letters/no.jpg',
    ),
    // ----------------------
    Lettersid(
      image: 'assets/images/letters/ha.jpg',
      jpName: 'ha',
    ),
    Lettersid(
      image: 'assets/images/letters/hi.jpg',
      jpName: 'hi',
    ),
    Lettersid(
      image: 'assets/images/letters/fu.jpg',
      jpName: 'fu',
    ),
    Lettersid(
      image: 'assets/images/letters/he.jpg',
      jpName: 'he',
    ),
    Lettersid(
      image: 'assets/images/letters/ho.jpg',
      jpName: 'ho',
    ),
    //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/ma.jpg',
      jpName: 'ma',
    ),
    Lettersid(
      image: 'assets/images/letters/mi.jpg',
      jpName: 'mi',
    ),
    Lettersid(
      image: 'assets/images/letters/mu.jpg',
      jpName: 'mu',
    ),
    Lettersid(
      image: 'assets/images/letters/me.jpg',
      jpName: 'me',
    ),
    Lettersid(
      image: 'assets/images/letters/mo.jpg',
      jpName: 'mo',
    ),
    //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/ya.jpg',
      jpName: 'ya',
    ),
    Lettersid(
      image: 'assets/images/letters/yu.jpg',
      jpName: 'yu',
    ),
    Lettersid(
      image: 'assets/images/letters/yo.jpg',
      jpName: 'yo',
    ),
  //   -----------------------------------------
    Lettersid(
      image: 'assets/images/letters/ra.jpg',
      jpName: 'ra',
    ),
    Lettersid(
      image: 'assets/images/letters/ri.jpg',
      jpName: 'ri',
    ),
    Lettersid(
      image: 'assets/images/letters/ru.jpg',
      jpName: 'ru',
    ),
    Lettersid(
      image: 'assets/images/letters/re.jpg',
      jpName: 're',
    ),
    Lettersid(
      image: 'assets/images/letters/ro.jpg',
      jpName: 'ro',
    ),
    //   ------------------------------------------
    Lettersid(
      image: 'assets/images/letters/wa.jpg',
      jpName: 'wa',
    ),
    Lettersid(
      image: 'assets/images/letters/n-m.jpg',
      jpName: 'n/m',
    ),


  ];
  List<Map<String, dynamic>> get letterGroups => [
    {
      'title': 'Vowels',
      'letters': letters.sublist(0, 5),
    },
    {
      'title': 'K Group',
      'letters': letters.sublist(5, 10),
    },
    {
      'title': 'S Group',
      'letters': letters.sublist(10, 15),
    },
    {
      'title': 'T Group',
      'letters': letters.sublist(15, 20),
    },
    {
      'title': 'N Group',
      'letters': letters.sublist(20, 25),
    },
    {
      'title': 'H Group',
      'letters': letters.sublist(25, 30),
    },
    {
      'title': 'M Group',
      'letters': letters.sublist(30, 35),
    },
    {
      'title': 'Y Group',
      'letters': letters.sublist(35, 38),
    },
    {
      'title': 'R Group',
      'letters': letters.sublist(38, 43),
    },
    {
      'title': 'W Group',
      'letters': letters.sublist(43, 45),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Color(0xFFFFF8E1),

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

    centerTitle: true,
    elevation: 0,
    backgroundColor: const Color(0xFFEF6C00),

    title: const Text(
    'Japanese Letters',
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

      body: ListView(
        padding: const EdgeInsets.all(16),

        children: [
          GestureDetector(
            onTap: playAllLetters,

            child: Container(
              width: double.infinity,
              height: 110,

              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color:Colors.white,
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.volume_up,
                    color: Color(0xFFEF6C00),
                    size: 45,
                  ),

                  SizedBox(width: 15),

                  Text(
                    'Listen',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEF6C00),
                    ),
                  ),
                  const SizedBox(width: 20),

                  Image.asset(
                    'assets/images/letters/images55.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),


          for (var group in letterGroups)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: LetterGroup(
                title: group['title'],
                letters: group['letters'],
              ),
            ),

        ],
      ),
    );

}}
