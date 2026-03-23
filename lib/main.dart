import 'package:flutter/material.dart';
import 'package:workout_plan/pages/add_page.dart';
import 'package:workout_plan/pages/fav_page.dart';
import 'package:workout_plan/pages/home_page.dart';
import 'package:workout_plan/pages/profile_page.dart';

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
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF0404DA),
          unselectedItemColor: Color(0xf04B4B4E),

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
      ),
    );
  }
}
