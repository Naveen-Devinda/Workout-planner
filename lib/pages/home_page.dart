import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_plan/constants/colors.dart';
import 'package:workout_plan/data/user_data.dart';

class HomePge extends StatefulWidget {
  const HomePge({super.key});

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  final DateFormat formatter = DateFormat("EEEE,MMMM");
  final DateFormat dayFormate = DateFormat("dd");

  //user data import
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String dayFormateDate = dayFormate.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $dayFormateDate",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: kSubtitleColor,
                  ),
                ),

                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: kMainBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
