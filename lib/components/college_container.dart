import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_tech_internshala/components/share_container.dart';

import '../screens/clg_page.dart';
import 'data.dart';
class CollegeContainer extends StatelessWidget {
  const CollegeContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CollegePage.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              spreadRadius: 0.25,
              blurRadius: 5, // shadow blur
              color: Colors.grey, // shadow color
              offset: Offset(2.0, 2.0), // how much shadow will be shown
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 116,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration:  BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/college${index+1}.png"),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const  [
                  ShareContainer(title: "share",),
                  ShareContainer(title: "saved",),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Data.colleges[index][0],
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 22,
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff27C200),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${Data.colleges[index][2]} ",
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Image.asset(
                                "assets/images/star.png",
                                height: 14,
                                width: 14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Eu ut imperdiet sed nec ullamcorper.",
                        style: GoogleFonts.lato(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8E8E8E),
                          height: 1.5,
                        ),
                      ),
                      Container(
                        height: 21,
                        width: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff0E3C6E),
                        ),
                        child: Center(
                          child: Text(
                            "Apply Now",
                            style: GoogleFonts.lato(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/like.png",
                        height: 26,
                        width: 26,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Text(
                          Data.colleges[index][3 ],
                          style: GoogleFonts.lato(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8E8E8E),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xffA9A9A9),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "468+",
                        style: GoogleFonts.lato(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff8E8E8E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

