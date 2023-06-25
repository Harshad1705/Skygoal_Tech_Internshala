import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blank_screen.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

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
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height*0.08,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Color(0xff0E3C6E),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
          selectedLabelStyle:  GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
          unselectedLabelStyle: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          }, // new
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/icon1.png"),),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/icons/icon3.png"),),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/icon2.png"),),
              label: 'saved',
            ),
            BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/icons/icon4.png"),),
              label: 'account',
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
