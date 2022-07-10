import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('Bmi_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
              )),
            ),
            const Center(
              child: CircularProgressIndicator(color: Colors.white,),
            ),
            const Center(
              child: Text(
                "🤍 Calculate Your BMI 🤍",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
