import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int) onTabSelected;

  const CustomBottomBar({
    super.key,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => onTabSelected(0),
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () => onTabSelected(1),
            icon: const Icon(Icons.add_circle),
          ),
          IconButton(
            onPressed: () => onTabSelected(2),
            icon: const Icon(Icons.bar_chart),
          ),
          IconButton(
            onPressed: () => onTabSelected(3),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}