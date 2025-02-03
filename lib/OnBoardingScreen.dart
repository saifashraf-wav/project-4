// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:onboardingpage/homePage.dart';
import 'package:onboardingpage/intropages/intro_page_1.dart';
import 'package:onboardingpage/intropages/intro_page_2.dart';
import 'package:onboardingpage/intropages/intro_page_3.dart';
import 'package:onboardingpage/intropages/intro_page_4.dart';
import 'package:onboardingpage/intropages/intro_page_5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingpageState();
}

class _OnBoardingpageState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          children: const [
            introPage1(),
            BusinessCard(),
            introPage3(),
            introPage5(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: const Text("Skip")),
                SmoothPageIndicator(controller: _controller, count: 4),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const homePage();
                          }));
                        },
                        child: const Text("Done"))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: const Text("Next"))
              ],
            ))
      ],
    ));
  }
}
