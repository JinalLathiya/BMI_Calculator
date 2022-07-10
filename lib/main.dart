import 'package:flutter/material.dart';

import 'Screens/bmi_screen.dart';
import 'Screens/calculate_bmi_screen.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'Bmi_screen' : (context) => const BMIScreen(),
        'Calculate_screen' : (context) => const CalculateScreen(),
      },
    );
  }
}
