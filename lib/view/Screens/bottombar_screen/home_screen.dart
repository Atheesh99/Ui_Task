import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/const/const.dart';
import '../../../model/tile/progress_tile.dart';
import '../../../model/tile/task_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextStyle textStyle = GoogleFonts.roboto(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final List<String> imageUrl = [
    "assets/profile_4.jpeg",
    "assets/profile_6.jpeg",
    "assets/profile_8.jpeg",
    "assets/profile_9.jpeg",
    "assets/Profile_11.jpeg",
    "assets/Profile_1.jpeg",
    "assets/profile_2.jpeg",
    "assets/profile_3.jpeg",
    "assets/Profile_5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.grey[350],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/Profile_img.png',
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded,
                        size: 35, color: Colors.black54),
                  ),
                ],
              ),
              AppSize.kHeight20,
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  'Hello',
                  style: GoogleFonts.actor(
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      color: AppColor.greyColor),
                ),
              ),
              Text(
                'Alex Marconi',
                style: textStyle,
              ),
              AppSize.kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ProgressTile(
                      color: Colors.orangeAccent.shade400,
                      icon: Icons.access_time,
                      text: 'In Progress',
                    ),
                  ),
                  AppSize.kWidth10,
                  Expanded(
                    child: ProgressTile(
                      color: Colors.indigo.shade400,
                      icon: Icons.sync_alt,
                      text: 'Ongoing',
                    ),
                  )
                ],
              ),
              AppSize.kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ProgressTile(
                        color: Colors.green.shade400,
                        icon: Icons.file_open,
                        text: 'Completed'),
                  ),
                  AppSize.kWidth10,
                  Expanded(
                    child: ProgressTile(
                        color: Colors.red.shade300,
                        icon: Icons.cancel_presentation,
                        text: 'Cancel'),
                  )
                ],
              ),
              AppSize.kHeight20,
              Row(
                children: [
                  Text(
                    'Daily Task',
                    style: textStyle,
                  ),
                  const Spacer(),
                  const Text(
                    'All Task',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColor.greyColor),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 28,
                    color: AppColor.greyColor,
                  )
                ],
              ),
              AppSize.kHeight15,
              TaskTile(
                value: 0.6,
                image: imageUrl[0],
                image1: imageUrl[1],
                image2: imageUrl[2],
                text: 'App Animation',
                color: Colors.indigo.shade400,
              ),
              AppSize.kHeight10,
              TaskTile(
                value: 0.8,
                image: imageUrl[3],
                image1: imageUrl[4],
                image2: imageUrl[5],
                text: 'Dashboard Design',
                color: Colors.green.shade400,
              ),
              AppSize.kHeight10,
              TaskTile(
                value: 0.5,
                image: imageUrl[6],
                image1: imageUrl[7],
                image2: imageUrl[8],
                text: 'UI/UX Design',
                color: Colors.orangeAccent.shade400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
