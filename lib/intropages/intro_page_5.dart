// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class introPage5 extends StatelessWidget {
  const introPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70,
            backgroundImage:
                AssetImage("imgs/WhatsApp Image 2024-08-21 at 19.07.32.jpeg"),
          ),
          Text(
            "Ahmed Mostafa",
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
                  color: Colors.green,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "+20 1030196609",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
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
                  color: Colors.green,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "ahmed.hash.developer@gmail.com",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
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
