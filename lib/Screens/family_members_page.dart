import 'package:flutter/material.dart';
import 'package:toku/Components/list_item.dart';
import 'package:toku/Models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  final List<ItemModel> members = [
    ItemModel(
      imagePath: 'assets/images/family_members/family_father.png',
      enName: 'Father',
      jpName: 'Chichioya',
      audioPath: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_mother.png',
      enName: 'Mother',
      jpName: 'Hahaoya',
      audioPath: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_son.png',
      enName: 'Son',
      jpName: 'Musuko',
      audioPath: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_daughter.png',
      enName: 'Daughter',
      jpName: 'Musume',
      audioPath: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      enName: 'Older brother',
      jpName: 'Ani',
      audioPath: 'sounds/family_members/older_brother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      enName: 'Younger brother',
      jpName: 'Otōto',
      audioPath: 'sounds/family_members/younger_brother.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      enName: 'Older sister',
      jpName: 'Ane',
      audioPath: 'sounds/family_members/older_sister.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      enName: 'Younger sister',
      jpName: 'Imōto',
      audioPath: 'sounds/family_members/younger_sister.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grandfather',
      jpName: 'Sofu',
      audioPath: 'sounds/family_members/grand_father.wav',
    ),
    ItemModel(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      enName: 'Grandmother',
      jpName: 'Sobo',
      audioPath: 'sounds/family_members/grand_mother.wav',
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
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: members[index],
              color: const Color(0xff558837),
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

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xff463228),
      foregroundColor: Colors.white,
      title: const Text(
        'Family Members',
      ),
    ),
    body: const Center(
        child: Text(
      'Family Members Page',
      style: TextStyle(fontSize: 30),
    )),
  );
}
