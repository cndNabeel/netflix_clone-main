import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.icons, required this.title})
      : super(key: key);

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icons,
          color: kWhiteColor,
          size: 40,
        ),
        Text(
          title,
          style:
              const TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
