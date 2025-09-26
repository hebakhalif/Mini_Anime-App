import 'package:anime_app/featuers/home/presenation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ViewRow extends StatefulWidget {
  const ViewRow({super.key});

  @override
  State<ViewRow> createState() => _ViewRowState();
}

class _ViewRowState extends State<ViewRow> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(),
      const Center(child: Text("Popular Page")),
      const Center(child: Text("Trending Page")),
      const Center(child: Text("Page")),
      const Center(child: Text("Watch Later Page")),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Where Anime Comes Alive",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildTabItem("All", 0),
                    buildTabItem("Popular", 1),
                    buildTabItem("Trending", 2),
                    buildTabItem("New Releases", 3),
                    buildTabItem("Watch Later", 4),
                  ],
                ),
              ),
              Expanded(child: pages[_selectedIndex]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabItem(String title, int index) {
    final bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blueAccent : Colors.grey[100],
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: isSelected ? Colors.white : Colors.blueAccent,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
