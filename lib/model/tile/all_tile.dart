import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:task/const/const.dart';

class AllTile extends StatefulWidget {
  final String topic;
  final String detail;
  final String date;
  final double percentage;
  final Color color;
  const AllTile(
      {super.key,
      required this.topic,
      required this.detail,
      required this.date,
      required this.percentage,
      required this.color});

  @override
  State<AllTile> createState() => _AllTileState();
}

class _AllTileState extends State<AllTile> {
  late ValueNotifier<double> valueNotifier;
  @override
  void initState() {
    valueNotifier = ValueNotifier(widget.percentage);
    super.initState();
  }

  final List<String> imageUrl = [
    "assets/Profile_11.jpeg",
    "assets/Profile_1.jpeg",
    "assets/profile_9.jpeg",
    "assets/profile_8.jpeg",
    "assets/profile_5.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.topic,
              style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              widget.detail,
              style: GoogleFonts.roboto(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.grey[400],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Team',
                style: GoogleFonts.actor(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: size.height * 0.055,
                  width: size.width * 0.4,
                  child: Stack(
                    children: [
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            imageUrl[0],
                            height: size.height * 0.048,
                            width: size.width * 0.10,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 22,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              imageUrl[1],
                              height: size.height * 0.048,
                              width: size.width * 0.10,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Positioned(
                        left: 44,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            imageUrl[2],
                            height: size.height * 0.048,
                            width: size.width * 0.10,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 62,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            imageUrl[3],
                            height: size.height * 0.048,
                            width: size.width * 0.10,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 77,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.amber[200],
                            child: IconButton(
                              onPressed: () {
                                print('111');
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: SimpleCircularProgressBar(
                    mergeMode: false,
                    backColor: Colors.grey.shade300,
                    progressColors: [widget.color],
                    valueNotifier: valueNotifier,
                    onGetText: (double value) {
                      return Text(
                        "${widget.percentage.toInt()}%",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.grey[400],
                ),
                AppSize.kWidth3,
                Text(
                  widget.date,
                  style:
                      GoogleFonts.roboto(fontSize: 14, color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
