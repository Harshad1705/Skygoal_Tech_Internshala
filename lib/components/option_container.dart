import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'function.dart';


class OptionsContainer extends StatelessWidget {
  const OptionsContainer({
    super.key,
    required this.streams,
    required this.colleges,
    required this.context,
    required this.index,
  });

  final List<String> streams;
  final List<List<String>> colleges;
  final BuildContext context;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Functions.showModal(context);
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.18,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/clg${index + 1}.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  colleges[index][0],
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  colleges[index][1],
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    wordSpacing: 2,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 30,
            child: Row(
              children: [
                Text(
                  colleges[index][2],
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  colleges[index][3],
                  style: GoogleFonts.lato(
                    shadows: const [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Colors.grey, // shadow color
                        offset:
                        Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff848484),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}