import 'package:flutter/material.dart';
import 'package:food_app/components/text.dart';

class Category extends StatelessWidget {
  bool isClicked;
  String text;
  Category({
    super.key,
    required this.isClicked,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isClicked ? Colors.orange : Colors.white,
      ),
      child: MyText(
        color: isClicked ? Colors.white : Colors.orange,
        fontSize: 16,
        text: text,
      ),
    );
  }
}
