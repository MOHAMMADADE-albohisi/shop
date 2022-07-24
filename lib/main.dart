import 'package:flutter/material.dart';
import 'package:shop/screen/app/Home_Screen.dart';
import 'package:shop/screen/login_scrren.dart';
import 'package:shop/screen/lunch_screen.dart';
import 'package:shop/screen/onbressd/onbresd.dart';

void main(){
  runApp(shop_app());
}

class shop_app extends StatelessWidget {
  const shop_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen' : (context) => const lunchscreen(),
        '/login_screen' : (context) => const loginscreen(),
        '/onbresd_screen' : (context) => const onpresd(),
        '/home_screen' : (context) => const homescreen(),
      },
    );

  }
}
