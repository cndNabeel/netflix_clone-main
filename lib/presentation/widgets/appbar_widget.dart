import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kWidth10,
          Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              size: 30,
              color: kWhiteColor,
            ),
          ),
          Container(
            height: 25,
            width: 25,
            color: kBlueColor,
          ),
          kWidth10,
        ],
      ),
    );
  }
}
