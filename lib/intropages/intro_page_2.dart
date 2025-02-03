// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFac8ddd),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "imgs/profile.png",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Engy Mohamed",
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 34),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              thickness: 2,
              color: Colors.white,
            ),
            const ContactCard(
              iconData: Icons.phone,
              name: '+20 1125 215 880',
            ),
            const ContactCard(
              iconData: Icons.email,
              name: 'engyymohamed19@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, required this.iconData, required this.name});
  final IconData iconData;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 70,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(iconData, size: 28, color: const Color(0xFFac8ddd)),
            ),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(fontSize: 20, color: Color(0xFFac8ddd)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
