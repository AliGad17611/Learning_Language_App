
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
   Category({super.key, required this.category, required this.color, required this.onTap });
  String category;
  Color color;
  VoidCallback onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            height: 65,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsetsDirectional.only(start: 20),
            decoration: BoxDecoration(
              color: color,
            ),
            child: Text(
              category,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
    );
  }
}