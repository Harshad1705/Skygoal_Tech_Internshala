import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BedContainer extends StatefulWidget {
  const BedContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<BedContainer> createState() => _BedContainerState();
}

class _BedContainerState extends State<BedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 31,
      width: 69,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xff0E3C6E),
          width: 1,
        ),
        color: widget.index==0 ? Color(0xff0E3C6E) : Colors.white,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/bed.png",
              height: 20,
              width: 20,
              color :widget.index==0 ? Colors.white: Colors.black,
            ),
            Text(
              "${4 - widget.index}",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color :widget.index==0 ? Colors.white: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
