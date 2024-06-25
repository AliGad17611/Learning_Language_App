import 'package:flutter/material.dart';
import 'package:toku/Components/list_item.dart';
import 'package:toku/Models/item.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  final List<ItemModel> colors = [
    ItemModel(
      imagePath: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Aka',
      audioPath: 'sounds/colors/red.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_yellow.png',
      enName: 'Yellow',
      jpName: 'Kiiro',
      audioPath: 'sounds/colors/yellow.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'Hokori Kiiro',
      audioPath: 'sounds/colors/dusty_yellow.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Midori',
      audioPath: 'sounds/colors/green.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Kuro',
      audioPath: 'sounds/colors/black.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gure',
      audioPath: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Shiro',
      audioPath: 'sounds/colors/white.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      jpName: 'Chairo',
      audioPath: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gure',
      audioPath: 'sounds/colors/gray.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff463228),
          title: const Text('Family Members'),
        ),
        body: ListView.separated(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
                item: colors[index], color: const Color(0xff79359F));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: Colors.white,
              height: 2,
            );
          },
        ));
  }
}
