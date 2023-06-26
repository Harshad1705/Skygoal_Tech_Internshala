import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_tech_internshala/screens/college_screen.dart';

import '../components/option_container.dart';
import '../components/data.dart';
import '../components/search.dart';
import '../components/search_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find your own way",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              Positioned(
                                right: 2,
                                top: 2,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffFD0000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Search in 600 colleges around!",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Search(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: Data.options.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return OptionsContainer(
                  streams: Data.streams,
                  colleges: Data.options,
                  context: context,
                  index: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
