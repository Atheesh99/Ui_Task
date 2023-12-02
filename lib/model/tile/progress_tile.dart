// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/const/const.dart';

class ProgressTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  String text;

  ProgressTile({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          AppSize.kHeight10,
          Text(
            text,
            style: GoogleFonts.actor(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: .7),
          )
        ],
      ),
    );
  }
}
