import 'package:flutter/material.dart';

class ButtonPlan extends StatelessWidget {
  final String title;
  const ButtonPlan({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
