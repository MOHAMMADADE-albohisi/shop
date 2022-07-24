import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class rowscrolle extends StatelessWidget {
  const rowscrolle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: GoogleFonts.nunito(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
