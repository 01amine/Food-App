import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String hintText;

  MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        filled: true,
        contentPadding: const EdgeInsets.all(12),
      ),
    );
  }
}
