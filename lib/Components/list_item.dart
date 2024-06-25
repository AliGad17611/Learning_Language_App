import 'package:flutter/material.dart';
import 'package:toku/Components/item_info.dart';
import 'package:toku/Models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color.fromARGB(255, 227, 219, 191),
              child: Image.asset(item.imagePath!)),
          Expanded(
            child: ItemInfo(item: item, color: color),
          )
        ],
      ),
    );
  }
}
