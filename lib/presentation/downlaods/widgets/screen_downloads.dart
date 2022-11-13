import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownlaods extends StatelessWidget {
  ScreenDownlaods({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => kHeight20,
          itemCount: _widgetList.length,
        ));
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/7uRbWOXxpWDMtnsd2PF3clu65jc.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wGE4ImqYjJZQi3xFu4I2OLm8m0w.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          style: TextStyle(
              color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kHeight10,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        kHeight10,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              radius: size.width * 0.38,
              backgroundColor: Colors.grey.withOpacity(0.5),
            ),
            DownloadsImageWidget(
              imageList: imageList[0],
              margin: const EdgeInsets.only(left: 130, bottom: 50),
              angle: 35,
              size: Size(size.width * 0.5, size.width * 0.58),
            ),
            DownloadsImageWidget(
              imageList: imageList[1],
              margin: const EdgeInsets.only(right: 130, bottom: 50),
              angle: -35,
              size: Size(size.width * 0.5, size.width * 0.58),
            ),
            DownloadsImageWidget(
              imageList: imageList[2],
              margin: const EdgeInsets.only(top: 0),
              size: Size(size.width * 0.6, size.width * 0.65),
            ),
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlueAccent,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Set Up",
                style:
                    TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight10,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "See what you can download",
              style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
