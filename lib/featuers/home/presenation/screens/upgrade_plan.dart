import 'package:anime_app/featuers/home/presenation/widget/button_plan.dart';
import 'package:anime_app/featuers/home/presenation/widget/card_plan.dart';
import 'package:flutter/material.dart';

class UpgradePlan extends StatefulWidget {
  const UpgradePlan({super.key});

  @override
  State<UpgradePlan> createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  int selectedIndex = 0; // 0 = Monthly, 1 = Annually

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDEE3FF),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Upgrade Plan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                IconButton(onPressed: () {}, icon: Icon(Icons.cancel_outlined)),
              ],
            ),
            Image.asset("assets/images/Rocket Boy 1 (1).png"),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Seamless Anime\n",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "Experience, Ad-Free.\n",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text:
                        "Enjoy unlimited anime streaming without\ninterruptions.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: PlanCard(
                title: "Monthly",
                price: "\$5 USD",
                duration: "/Month",
                description: "Include Family Sharing",
                isSelected: selectedIndex == 0,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: PlanCard(
                title: "Annually",
                price: "\$50 USD",
                duration: "/Year",
                description: "Include Family Sharing",
                isSelected: selectedIndex == 1,
              ),
            ),

            SizedBox(height: 10),
            ButtonPlan(title: "Continue"),
          ],
        ),
      ),
    );
  }
}
