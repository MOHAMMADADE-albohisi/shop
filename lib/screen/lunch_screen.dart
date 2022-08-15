import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';

class lunchscreen extends StatefulWidget {
  const lunchscreen({Key? key}) : super(key: key);

  @override
  State<lunchscreen> createState() => _lunchscreenState();
}

class _lunchscreenState extends State<lunchscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onbresd_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.topEnd,
                colors: [
              Color(0xFFA6D1E6),
              Color(0xFFFEFBF6),
            ])),
        child: Text(
          'SHOPPING',
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
