import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class introPage4 extends StatelessWidget {
  const introPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 117, 78),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  AssetImage('imgs/WhatsApp Image 2024-08-21 at 14.00.09.jpeg'),
            ),
            Text(
              "Hossam Badawy",
              style: GoogleFonts.pacifico(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Nichts wird mich aufhalten",
              style: GoogleFonts.sourceSans3(
                fontSize: 18.0,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.normal,
              ),
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
                      color: Color.fromARGB(255, 1, 91, 58),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      '+20 102 9027 165',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 1, 91, 58)),
                    ),
                  ],
                ),
              ),
            ),
            const Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 1, 91, 58),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'meshhossambadawy@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 1, 91, 58)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
