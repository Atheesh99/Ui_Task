import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/const/const.dart';
import 'package:task/view/Screens/tab_bar_screens/all_screen.dart';
import 'package:task/view/Screens/tab_bar_screens/completed_screen.dart';
import 'package:task/view/Screens/tab_bar_screens/ongoing_screen.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    final TextStyle tabTextStyle = GoogleFonts.roboto(
        letterSpacing: .5, fontSize: 15, fontWeight: FontWeight.w600);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
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
            Text(
              'Project',
              style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            AppSize.kHeight20,
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                  padding: const EdgeInsets.all(3),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo.shade400,
                  ),
                  dividerColor: Colors.transparent,
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: tabTextStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Ongoing',
                        style: tabTextStyle,
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                        style: tabTextStyle,
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: const [
                AllScreen(),
                OngoingScreen(),
                CompletedScreen(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
