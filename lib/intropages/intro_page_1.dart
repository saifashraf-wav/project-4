// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class introPage1 extends StatelessWidget {
  const introPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70,
            backgroundImage:
                AssetImage("imgs/WhatsApp Image 2024-08-20 at 15.07.47.jpeg"),
          ),
          Text(
            "Saif Eldin Ashraf",
            style: GoogleFonts.pacifico(fontSize: 32, color: Colors.white),
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(
                fontSize: 22, color: Colors.white, letterSpacing: 2.5),
          ),
          const SizedBox(
            height: 19,
            width: 160,
            child: Divider(
              color: Colors.white,
            ),
          ),
          const Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(children: [
                Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "+20 1283505319",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
          ),
          const Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(children: [
                Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "saifashraf391@gamil.com",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
