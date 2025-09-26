import 'package:anime_app/core/router.dart';
import 'package:anime_app/featuers/home/presenation/widget/card_view.dart';
import 'package:anime_app/featuers/home/presenation/widget/main_view.dart'
    show CustomNavBar;
import 'package:anime_app/featuers/home/presenation/widget/top_characters.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Center(child: Text("")),
    Center(child: Text("")),
    Center(child: Text("")),
    Center(child: Text("")),
    Center(child: Text("")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                        Navigator.pushNamed(context, Routes.detailsScreen);
                    },
                    child: CardView(
                      imagePath: "assets/images/frame1.png",
                      nameAnime: "Detective Conan",
                      textUnder: "Mystery",
                    ),
                  ),
                  SizedBox(width: 20),
                  CardView(
                    imagePath: "assets/images/frame2.png",
                    nameAnime: "Hunter x Hunter",
                    textUnder: "Adventure",
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Top Characters",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TopCharacters(
                    imagePath: "assets/images/Ellipse 1.png",
                    nameAnime: "Gon Freecss",
                    textUnder: "Hunter x Hunter",
                  ),
                  SizedBox(width: 10),
                  TopCharacters(
                    imagePath: "assets/images/Ellipse 1 (1).png",
                    nameAnime: "Naruto Uzumaki",
                    textUnder: "Naruto",
                  ),
                  SizedBox(width: 10),
                  TopCharacters(
                    imagePath: "assets/images/Ellipse 1 (2).png",
                    nameAnime: "Luffy",
                    textUnder: "One Piece",
                  ),
                   SizedBox(width: 15),
                   TopCharacters(
                    imagePath: "assets/images/Ellipse 1.png",
                    nameAnime: "Luffy",
                    textUnder: "One Piece",
                  ),  
                ],
              ),
            ),

            Expanded(child: pages[currentIndex]),
            CustomNavBar(
              selectedIndex: currentIndex,
              onItemTapped: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
