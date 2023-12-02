// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/const/const.dart';
import 'package:task/view/Screens/dashboard_design_screen.dart';

class TaskTile extends StatelessWidget {
  final String text;
  final String image;
  final String image1;
  final String image2;
  final Color color;
  final double value;

  final void Function()? onTap;
  TaskTile(
      {super.key,
      required this.image,
      required this.image1,
      required this.image2,
      required this.text,
      required this.color,
      required this.value,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DesignDashboard(),
          ),
        );
      },
      child: Container(
        height: size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 27,
                color: const Color.fromRGBO(189, 189, 189, 1),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.roboto(
                        fontSize: 17,
                        letterSpacing: -.3,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  AppSize.kHeight5,
                  SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.01,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation(color),
                        value: value,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: size.width * 0.24,
                height: size.width * 0.10,
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          image,
                          height: size.height * 0.042,
                          width: size.width * 0.10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          image1,
                          height: size.height * 0.042,
                          width: size.width * 0.10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 51,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          image2,
                          height: size.height * 0.042,
                          width: size.width * 0.10,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: onTap,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
