import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button.dart';
import 'package:netflix_clone/presentation/home/widgets/play_button.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: const BoxDecoration(
            color: kWhiteColor,
            image: DecorationImage(
                image: NetworkImage(kImagehome), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomButton(
                  icons: Icons.add,
                  title: "My List",
                ),
                PlayButton(),
                CustomButton(
                  icons: Icons.info_outline_rounded,
                  title: "Info",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
