import 'package:flutter/material.dart';
import 'package:skygoal_tech_internshala/screens/clg_page.dart';
import 'package:skygoal_tech_internshala/screens/college_screen.dart';
import 'package:skygoal_tech_internshala/screens/home.dart';
import 'package:skygoal_tech_internshala/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skygoal_Tech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      routes: {
        CollegePage.id: (context) => const CollegePage(),
        CollegeScreen.id: (context) => const CollegeScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
