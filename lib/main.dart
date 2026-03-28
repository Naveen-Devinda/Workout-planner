import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_plan/constants/colors.dart';
import 'package:workout_plan/pages/add_page.dart';
import 'package:workout_plan/pages/fav_page.dart';
import 'package:workout_plan/pages/home_page.dart';
import 'package:workout_plan/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePge(),
    AddNewPage(),
    FavouritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Workout planner",
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kselectedColor,
          unselectedItemColor: Color(0xf04B4B4E),
          type: BottomNavigationBarType.fixed,

          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "fav"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          ],
        ),

        body: pages[currentIndex], //render page logic
      ),
    );
  }
}
