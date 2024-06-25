import 'package:flutter/material.dart';
import 'package:toku/Components/list_item.dart';
import 'package:toku/Models/item.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  final List<ItemModel> numbers = [
    ItemModel(
      imagePath: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      audioPath: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      audioPath: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      audioPath: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
      audioPath: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      audioPath: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      audioPath: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_seven.png',
      jpName: 'shichi',
      enName: 'seven',
      audioPath: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      audioPath: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'nine',
      audioPath: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      imagePath: 'assets/images/numbers/number_ten.png',
      jpName: 'juu',
      enName: 'ten',
      audioPath: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff463228),
          title: const Text('Numbers'),
        ),
        body: ListView.separated(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: numbers[index],
              color: const Color(0xffEF9235),
            );
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
