import 'package:flutter/material.dart';

class HomePge extends StatefulWidget {
  const HomePge({super.key});

  @override
  State<HomePge> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(child: Text("This is home page")),
        ),
      ),
    );
  }
}
