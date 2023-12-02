import 'package:flutter/material.dart';
import 'package:task/const/const.dart';
import 'package:task/view/Screens/bottombar_screen/home_screen.dart';
import 'package:task/view/Screens/bottombar_screen/mail_screen.dart';
import 'package:task/view/Screens/bottombar_screen/setting_screen.dart';
import 'package:task/view/Screens/project_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //create a index for bottombar
  int selectedIndex = 0;

  List<Widget> screen = [
    HomeScreen(),
    const ProjectScreen(),
    const MailScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.blueColor,
          onPressed: () {},
          shape: const CircleBorder(),
          elevation: 10,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomAppBar(
            color: Colors.white,
            height: 65,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        selectedIndex = 0;
                        print(selectedIndex);
                      },
                    );
                  },
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                    color: selectedIndex == 0 ? Colors.blue[800] : Colors.grey,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 1;

                        print(selectedIndex);
                      });
                    },
                    icon: Icon(
                      Icons.file_copy_rounded,
                      size: 25,
                      color:
                          selectedIndex == 1 ? Colors.blue[800] : Colors.grey,
                    )),
                const SizedBox(width: 50),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    icon: Icon(
                      Icons.mail,
                      size: 25,
                      color:
                          selectedIndex == 2 ? Colors.blue[800] : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                      color:
                          selectedIndex == 3 ? Colors.blue[800] : Colors.grey,
                    )),
              ],
            ),
          ),
        ),
        body: screen[selectedIndex]);
  }
}
