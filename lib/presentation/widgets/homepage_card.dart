import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class HomePageMainCard extends StatelessWidget {
  const HomePageMainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: kRadius20,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://www.themoviedb.org/t/p/w220_and_h330_face/zN80Tlly8oMpKbVJv2TfRIj8dHG.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
