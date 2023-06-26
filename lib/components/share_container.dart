import 'package:flutter/material.dart';

class ShareContainer extends StatelessWidget {
  const ShareContainer({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(child: Image.asset("assets/images/${title}.png"),),
    );
  }
}
