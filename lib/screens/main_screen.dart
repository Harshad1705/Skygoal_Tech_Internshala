import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/data.dart';
import '../components/function.dart';
import 'blank_screen.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  late final List<Widget> _screens;

  @override
  void initState() {
    _screens = [
      const HomeScreen(),
      const BlankScreen(),
      const BlankScreen(),
      const BlankScreen(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Functions.bottomNavBar(context),
      body: _screens[Data.currentIndex],
    );
  }

}
