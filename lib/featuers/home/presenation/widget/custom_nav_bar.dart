import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildNavItem("assets/svg/home-2.svg", 0),
        buildNavItem("assets/svg/Group (3).svg", 1),
        buildNavItem("assets/svg/search-normal.svg", 2),
          buildNavItem("assets/svg/Group (4).svg", 3),
            buildNavItem("assets/svg/setting.svg", 4),
       
      ],
    );
  }

Widget buildNavItem(String iconPath, int index) {
  final bool isActive = selectedIndex == index;
  return GestureDetector(
    onTap: () => onItemTapped(index),
    child: Container(
      width: 65,
      height: 40,
      padding: const EdgeInsets.all(8), 
      decoration: BoxDecoration(
        color: isActive ?  Colors.blueAccent : const Color.fromARGB(0, 222, 34, 131), 
        borderRadius: BorderRadius.circular(12), 
        border: isActive
            ? Border.all(
                color:  Colors.blueAccent, 
                width: 2,
              )
            : null,
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 20,
        color: isActive
            ? const Color.fromARGB(255, 254, 253, 253)
            : Colors.grey,
      ),
    ),
  );
}
}
