import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';

import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';

import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifer = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ValueListenableBuilder(
        valueListenable: scrollNotifer,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection scrollDirection = notification.direction;
              print(scrollDirection);
              switch (scrollDirection) {
                case ScrollDirection.reverse:
                  scrollNotifer.value = false;
                  break;
                case ScrollDirection.forward:
                  scrollNotifer.value = true;
                  break;
                default:
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    BackGroundCard(),
                    kHeight10,
                    MainTitleCard(
                      title: "Released in the past year",
                    ),
                    MainTitleCard(
                      title: "Tranding Now",
                    ),
                    NumberCardWidegt(),
                    kHeight10,
                    MainTitleCard(
                      title: "Tense Dramas",
                    ),
                    MainTitleCard(
                      title: "South Indian Cinemas",
                    ),
                    kHeight10,
                  ],
                ),
                scrollNotifer.value
                    ? AnimatedContainer(
                        color: Colors.black.withOpacity(0.5),
                        width: double.infinity,
                        height: 140,
                        duration: const Duration(
                          microseconds: 1000,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/logos/netflix.png',
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.cast,
                                    size: 40,
                                    color: kWhiteColor,
                                  ),
                                ),
                                kWidth10,
                                Container(
                                  height: 25,
                                  width: 30,
                                  color: kBlueColor,
                                ),
                                kWidth10,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("TV Shows", style: kHomeTitleText),
                                Text("Movies", style: kHomeTitleText),
                                Text("Categories", style: kHomeTitleText),
                              ],
                            )
                          ],
                        ),
                      )
                    : kHeight10,
              ],
            ),
          );
        },
      ),
    ));
  }
}
