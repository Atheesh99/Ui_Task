import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:task/const/const.dart';
import 'package:task/model/tile/graph_titledata.dart';

class DesignDashboard extends StatefulWidget {
  const DesignDashboard({super.key});

  @override
  State<DesignDashboard> createState() => _DesignDashboardState();
}

class _DesignDashboardState extends State<DesignDashboard> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;

  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(85.0);
  }

  List<Color> gradientColors = [Colors.green, Colors.greenAccent];

  bool showAvg = false;

  final TextStyle textStyle = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final List<String> imageUrl = [
    "assets/Profile_1.jpeg",
    "assets/profile_2.jpeg",
    "assets/profile_3.jpeg",
    "assets/Profile_5.jpeg"
  ];

  final TextStyle checkboxtext =
      GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard Design',
                    style: textStyle,
                  ),
                  AppSize.kHeight10,
                  Text(
                    'Today, Shared by - Unbox Digital',
                    style: GoogleFonts.actor(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                  AppSize.kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: size.height * .1,
                        width: size.height * .1,
                        child: SimpleCircularProgressBar(
                          mergeMode: false,
                          backColor: Colors.grey.shade300,
                          progressColors: const [
                            Color.fromARGB(255, 67, 225, 149),
                            Color.fromARGB(255, 67, 225, 149),
                          ],
                          valueNotifier: valueNotifier,
                          onGetText: (double value) {
                            return const Text(
                              '${85}%',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Team',
                              style: GoogleFonts.actor(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          AppSize.kHeight10,
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
                                          height: size.height * 0.042,
                                          width: size.width * 0.10,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 21,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            imageUrl[1],
                                            height: size.height * 0.042,
                                            width: size.width * 0.10,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Positioned(
                                        left: 43,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Image.asset(
                                            imageUrl[2],
                                            height: size.height * 0.043,
                                            width: size.width * 0.10,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Positioned(
                                      left: 61,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          imageUrl[3],
                                          height: size.height * 0.043,
                                          width: size.width * 0.10,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 82,
                                      child: CircleAvatar(
                                        radius: 19,
                                        backgroundColor: Colors.amber[200],
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {},
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
                            ],
                          ),
                          AppSize.kHeight10,
                          Text(
                            'Deadline',
                            style: GoogleFonts.roboto(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          AppSize.kHeight10,
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_outlined,
                                color: AppColor.greyColor,
                              ),
                              AppSize.kWidth3,
                              Text(
                                'July 25,2021-July 30,2021',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.greyColor,
                                ),
                              ),
                              AppSize.kWidth10,
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Project Progress',
                    style: textStyle,
                  ),
                  AppSize.kHeight30,
                  Row(
                    children: [
                      checkBox(),
                      AppSize.kWidth10,
                      Text(
                        'Current user flow',
                        style: checkboxtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      checkBox1(),
                      AppSize.kWidth10,
                      Text(
                        'Create wireframe',
                        style: checkboxtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      checkBox2(),
                      AppSize.kWidth10,
                      Text(
                        'Transform to visual design',
                        style: checkboxtext,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Text('Project Overview', style: textStyle),
                      const Spacer(),
                      Text(
                        'Weekly',
                        style: GoogleFonts.actor(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[500],
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                  AppSize.kHeight30,
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: LineChart(
                      LineChartData(
                        minX: 0,
                        maxX: 13,
                        minY: 0,
                        maxY: 6,
                        titlesData: LineTitles.getTitleData(),
                        borderData: FlBorderData(
                            show: true,
                            border: Border.all(color: Colors.white)),
                        lineBarsData: [
                          LineChartBarData(
                            spots: const [
                              FlSpot(0, 2.5),
                              FlSpot(2, 2),
                              FlSpot(4, 4),
                              FlSpot(6, 2.5),
                              FlSpot(8, 4.5),
                              FlSpot(9.5, 3),
                              FlSpot(13, 5)
                            ],
                            isCurved: true,
                            gradient: LinearGradient(colors: gradientColors),
                            barWidth: 5,
                            isStrokeCapRound: true,
                            dotData: const FlDotData(
                              show: false,
                            ),
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                colors: gradientColors
                                    .map((color) => color.withOpacity(0.3))
                                    .toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  Checkbox checkBox() {
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.all<Color>(
          isChecked ? Colors.blue[700]! : Colors.white),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }

  Checkbox checkBox1() {
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.all<Color>(
          isChecked1 ? Colors.blue[700]! : Colors.white),
      value: isChecked1,
      onChanged: (bool? value) {
        setState(() {
          isChecked1 = value!;
        });
      },
    );
  }

  Checkbox checkBox2() {
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.all<Color>(
          isChecked2 ? Colors.blue[700]! : Colors.white),
      value: isChecked2,
      onChanged: (bool? value) {
        setState(() {
          isChecked2 = value!;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
            color: isChecked2 ? Colors.blue[700]! : Colors.blue[700]!),
      ),
    );
  }
}
