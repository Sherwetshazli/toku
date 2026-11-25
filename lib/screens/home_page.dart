
import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/family_mambers.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/screens/colors_id.dart';
import 'package:toku/components/category_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku/screens/letters_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Future<String> getUsername() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) return '';

    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    return userData.data()?['username'] ?? '';
  }
  Widget buildProfile() {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return const Padding(
        padding: EdgeInsets.all(25),
        child: Text('No user is logged in'),
      );
    }

    return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      future: FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get(),

      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 180,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final data = snapshot.data?.data();
        final username = data?['username'] ?? 'User';
        final email = user.email ?? 'No email';

        return Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFFEF6C00),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 45,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                username,
                style: GoogleFonts.fredoka(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFEF6C00),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                email,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.brown,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF8E1),
        elevation: 0,
        leadingWidth: 45,

        leading: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFEF6C00),
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Row(
          children: [
            Image.asset(
              'lib/img/IMG_5364-1024x671.png',
              height: 55,
              width: 55,
            ),
            const SizedBox(width: 10),
            Text(
              'toku',
              style: GoogleFonts.fredoka(
                color: const Color(0xFFEF6C00),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // Profile Circle
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: const Color(0xFFFFF8E1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: buildProfile(),
                    );
                  },
                );
              },
              icon: const CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xFFEF6C00),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 27,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

            // Welcome Category
            Container(

              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFFEF6C00),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: const Color(0xFFEF6C00),
                  width: 1.5,
                ),
              ),
          child: Row(
          children: [

            // Text on the left
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  FutureBuilder<String>(
                    future: getUsername(),
                    builder: (context, snapshot) {
                      final username = snapshot.data ?? '';

                      return Text(
                        username.isEmpty
                            ? 'Konnichiwa!'
                            : 'Konnichiwa, $username',
                        style: GoogleFonts.fredoka(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFF8E1),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Ready for a little Japanese adventure?',
                    style: GoogleFonts.fredoka(
                      fontSize: 15,
                      color: Color(0xFFFFF8E1),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),


            // Image on the right
            Image.asset(
              'lib/img/good_morning.png',
              width: 100,
              height: 115,
              fit: BoxFit.contain,
            ),

          ],
        ),



        ),


            const SizedBox(height: 20),

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LettersidPage();
                },
              ),
            );
          },
          child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: Colors.white,
                width: 1.5,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Japanese Hiragana',
                          style: GoogleFonts.fredoka(
                            fontSize: 26,
                            color: const Color(0xFF4E342E),

                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Discover Japanese characters together!',
                          style: GoogleFonts.fredoka(
                            fontSize: 14,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10),

                  Image.asset(
                    'assets/images/letters/imagen.jpg',
                    width: 100,
                    height: 115,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
        ),
            const SizedBox(height: 20),


      GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,

                children: [

                  Category(
                    text: 'Numbers',
                    color: const Color(0xFFFFFFFF),
                    image:'lib/img/c53e0fcdd722b3a511e391498432d4b6.jpg',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return NumberPageokuApp();
                          }));
                    },
                  ),

                  Category(
                    text: 'Family Members',
                    color: const Color(0xFFFFFFFF),
                    image: 'lib/img/cartoon-family-portrait-happy-parents-children-together-isolated-white-cheerful-illustration-five-embracing-smiling-378550759.jpg',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return FamilyMembersPage();
                          }));
                    },
                  ),

                  Category(
                    text: 'Colors',
                    color: const Color(0xFFFFFFFF),
                    image: 'lib/img/images (1).jpg',
onTap: () {
Navigator.push(context,
MaterialPageRoute(builder: (context) {
return const ColorsnamePage();
}));},

                  ),

                  Category(
                    text: 'Phrases',
                    color: const Color(0xFFFFFFFF),
                    image: 'lib/img/j84MhFBgmMW2SHwxj0WWhGjy.jpg',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const PhrasesPage();
                          }));
                    },
                  ),
                ],
              ),

          ],
        ),

    );
  }
}
