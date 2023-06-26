import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_tech_internshala/components/search.dart';

import '../components/college_container.dart';
import '../components/function.dart';
import '../components/share_container.dart';

class CollegeScreen extends StatefulWidget {
  const CollegeScreen({Key? key}) : super(key: key);

  static const String id = "CollegeScreen";

  @override
  State<CollegeScreen> createState() => _CollegeScreenState();
}

class _CollegeScreenState extends State<CollegeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Functions.bottomNavBar(context),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: const BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Search(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: SizedBox(
                height: 20,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "MVSH Engineering college ",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context,index) {
                return CollegeContainer(index: index,);
              }
            ),
          ],
        ),
      ),
    );
  }
}

