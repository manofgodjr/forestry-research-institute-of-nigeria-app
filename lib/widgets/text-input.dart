import 'package:flutter/material.dart';

import '../pallete.dart';

class TextInput extends StatelessWidget {
  const TextInput({
     Key? key,
    required this.icon,
    required this.hinter,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hinter;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100]!.withOpacity(0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hinter,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: BodyText,
          ),
          style: BodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}