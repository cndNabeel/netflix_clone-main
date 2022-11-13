import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                height: 150,
                width: 40,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: kRadius20,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -25,
            left: 1,
            child: BorderedText(
              strokeWidth: 5.0,
              strokeColor: kWhiteColor,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  color: kBlackColor,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
