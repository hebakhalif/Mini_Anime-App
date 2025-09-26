import 'package:anime_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 40, 78),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/4cc0861e-40ee-4f28-8cfb-6bae9edb5f7b 1.png",
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  bottom: -40, 
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      "assets/images/Group 15.png",
                      width: 150,
                    ),
                  ),
                ),

                Positioned(
                  bottom: -90, 
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTag("Dark Fantasy"),
                      _buildTag("Action"),
                      _buildTag("Adventure"),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 100), 

            const Divider(
              endIndent: 25,
              indent: 25,
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 8),

            // Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfo(Icons.remove_red_eye, "2.3M views"),
                  _buildInfo(Icons.favorite, "2K clap"),
                  _buildInfo(Icons.tv, "4 Seasons"),
                ],
              ),
            ),

            const SizedBox(height: 8),
            const Divider(
              endIndent: 25,
              indent: 25,
              thickness: 1,
              color: Colors.grey,
            ),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/svg/Group 16.svg", height: 20),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Demon Slayer: Kimetsu no Yaiba follows ...",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 25,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Preview",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 134, 146, 214),
                        Color(0xFF3949AB),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.upgradePlun);
                    },
                    child: const Text(
                      "Watch Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: const Color.fromARGB(255, 73, 61, 94),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
