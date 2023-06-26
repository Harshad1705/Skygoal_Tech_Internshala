import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_tech_internshala/components/search_container.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchContainer(
              child: Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0xffD6D6D6),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Search for colleges, schools.",
                overflow: TextOverflow.visible,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffD6D6D6),
                ),
              )
            ],
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SearchContainer(
            child: Icon(
              Icons.mic,
              color: Color(0xff0E3C6E),
            ),
          ),
        ),
      ],
    );
  }
}
