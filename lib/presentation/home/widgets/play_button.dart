import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 40,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(
              color: kBlackColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
