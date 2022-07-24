import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homesscreen extends StatelessWidget {
  const homesscreen({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        'Handbages',
        style: GoogleFonts.nunito(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      Spacer(),
      TextButton(
        onPressed: () {},
        child: Text(
          'Sell all',
          style: GoogleFonts.nunito(),
        ),
      ),
    ]);
  }
}
