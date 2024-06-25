import 'package:flutter/material.dart';
import 'package:toku/Components/category_item.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_members_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('Toku',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Category(
            category: "Numbers",
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            category: "Family Members",
            color: const Color(0xff558837),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Category(
            category: "Colors",
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
          ),
          Category(
            category: "Phrases",
            color: const Color(0xff50ADC7),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
