import 'package:flutter/material.dart';
import 'package:food_app/components/text.dart';

class CardF extends StatelessWidget {
  final int likes;
  final String image;
  final MyText mytext1;
  final MyText mytext2;
  CardF({
    super.key,
    required this.likes,
    required this.image,
    required this.mytext1,
    required this.mytext2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    mytext1,
                    mytext2,
                  ],
                ),
                Row(
                  children: [
                    MyText(
                      color: Colors.red,
                      fontSize: 12,
                      text: likes.toString(),
                    ),
                    const Icon(Icons.thumb_up_alt_outlined),
                    const Icon(Icons.save),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
