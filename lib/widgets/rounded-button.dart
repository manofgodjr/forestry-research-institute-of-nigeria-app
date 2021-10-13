import 'package:flutter/material.dart';

import '../pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            buttonText,
            style: BodyText,
          ),
        ),
      ),
    );
  }
}