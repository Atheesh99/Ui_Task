import 'package:flutter/material.dart';
import 'package:task/const/const.dart';
import 'package:task/model/tile/all_tile.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSize.kHeight15,
            AllTile(
                color: Colors.blue,
                topic: 'App Animation',
                detail: 'Today, Shared by - Unboxed Digital',
                date: 'July 15,2021-July 22,2021',
                percentage: 65),
            AppSize.kHeight15,
            AllTile(
                color: Color.fromARGB(255, 67, 225, 149),
                topic: 'Dashboard Design',
                detail: 'Today, Shared by - Ui Been',
                date: 'July 25,2021-July 30,2021',
                percentage: 85),
            AppSize.kHeight15,
            AllTile(
                color: Color.fromARGB(255, 251, 165, 36),
                topic: 'UI/UX Design',
                detail: 'Today, Shared by -Unboxed',
                date: 'July 28,2021- June 30,2021',
                percentage: 30),
          ],
        ),
      ),
    );
  }
}
