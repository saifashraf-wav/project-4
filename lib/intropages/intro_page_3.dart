// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class introPage3 extends StatelessWidget {
  const introPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff274c77),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80.0,
            backgroundImage:
                AssetImage("imgs/WhatsApp Image 2024-08-20 at 22.15.23.jpeg"),
          ),
          Text(
            "Ibrahim Dosoqi",
            style: GoogleFonts.pacifico(
              fontSize: 30.0,
              color: Colors.white,
            ),
          ),
          const Text(
            "iOS & Android Developer",
            style: TextStyle(
                fontSize: 15, color: Colors.white, letterSpacing: 2.5),
          ),
          const SizedBox(
            height: 19.0,
            width: 160.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          const Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 38, 104, 180),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    "+010 2691 6321",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff274c77)),
                  )
                ],
              ),
            ),
          ),
          const Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 38, 104, 180),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "ibrahimdosoki095@gmail.com",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff274c77)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
