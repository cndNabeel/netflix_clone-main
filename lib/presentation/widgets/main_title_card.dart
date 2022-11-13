import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/homepage_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight10,
        LimitedBox(
          maxHeight: 250,
          maxWidth: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const HomePageMainCard()),
          ),
        ),
        kHeight10,
      ],
    );
  }
}
