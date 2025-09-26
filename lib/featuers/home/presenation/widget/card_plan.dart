import 'package:flutter/material.dart';

class PlanCard extends StatefulWidget {
  final String title;
  final String price;
  final String duration;
  final String description;
  final bool isSelected;

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.duration,
    required this.description,
    required this.isSelected,
  });

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  int selectedIndex = 0; // 0 = Monthly, 1 = Annually

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 115,
      decoration: BoxDecoration(
        color: widget.isSelected ? const Color(0xFF18153f) : Colors.white,
        borderRadius: BorderRadius.circular(19),
        border: Border.all(
          color: widget.isSelected ? Colors.transparent : Colors.grey.shade300,
          width: 1.5,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Files & Folders 3 1.png",
            width: 60,
            height: 60,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: widget.isSelected ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      widget.isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: widget.isSelected ? Colors.white : Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "${widget.price} ${widget.duration}",
                  style: TextStyle(
                    color: widget.isSelected ? Colors.white : Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  widget.description,
                  style: TextStyle(
                    color:
                        widget.isSelected
                            ? Colors.white.withOpacity(0.5)
                            : Colors.black.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
