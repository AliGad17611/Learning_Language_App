import 'package:flutter/material.dart';
import 'package:toku/Components/item_info.dart';
import 'package:toku/Models/item.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  final List<ItemModel> phrases = [
    ItemModel(
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
      audioPath: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Kōdoku o o wasurenaku',
      enName: "Don't forget to subscribe",
      audioPath: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
      audioPath: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      audioPath: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
      audioPath: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantan',
      enName: 'Programming is easy',
      audioPath: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Anata no namae wa nanidesu ka?',
      enName: 'What is your name?',
      audioPath: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      enName: 'Where are you going',
      audioPath: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: "Yes, I'm coming",
      audioPath: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff463228),
          foregroundColor: Colors.white,
          title: const Text('Phrases'),
        ),
        body: ListView.separated(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return ItemInfo(
              item: phrases[index],
              color: const Color(0xff50ADC7),
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
