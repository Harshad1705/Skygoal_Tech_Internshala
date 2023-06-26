import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_tech_internshala/screens/college_screen.dart';

import 'data.dart';

mixin Functions {



  static  bottomNavBar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.08,
      child: BottomNavigationBar(
        currentIndex: Data.currentIndex,
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
          // setState(() {
          //   _currentIndex = value;
          // });
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
    );
  }

  static showModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sort by",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/icons/cancel.png",
                      height: 16,
                      width: 16,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.04,
                ),
                child: Divider(
                  color: Color(0xff000000),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: Data.streams.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CollegeScreen.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/streams${index + 1}.png",
                            height: 22,
                            width: 22,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Text(
                              Data.streams[index],
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff0E3C6E),
                                width: 4,
                              ),
                            ),
                            child: index == 0
                                ? Center(
                                    child: Container(
                                      height: 9,
                                      width: 9,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff0E3C6E),
                                      ),
                                    ),
                                  )
                                : Center(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
