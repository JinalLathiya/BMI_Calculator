import 'package:flutter/material.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  String underweight = 'Under Weight';
  String normalweight = 'Normal Weight';

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: const Color(0xff101438),
      appBar: AppBar(
        backgroundColor: const Color(0xff101438),
        elevation: 0,
        title: const Text(
          "Your BMI result",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              (args >= 18.5)
                  ? underweight
                  : (args > 18.5 && args <= 24.9)
                      ? underweight
                      : (args >= 25.0 && args <= 29.9)
                          ? underweight
                          : (args >= 30.0 && args <= 34.9)
                              ? underweight
                              : (args >= 35.0 && args <= 39.9)
                                  ? underweight
                                  : normalweight,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              "$args",
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Container(
              margin: const EdgeInsets.only(left: 50),
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  (args >= 18.5)
                      ? 'You have under body weight'
                      : (args > 18.5 && args <= 24.9)
                          ? 'You have under body weight'
                          : (args >= 25.0 && args <= 29.9)
                              ? 'You have under body weight'
                              : (args >= 30.0 && args <= 34.9)
                                  ? 'You have under body weight'
                                  : (args >= 35.0 && args <= 39.9)
                                      ? 'You have under body weight'
                                      : 'You have normal body weight good job',
                  style: const TextStyle(
                    color: Colors.white38,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFF0266),
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('Bmi_screen');
                },
                child: const Text(
                  "RE-CALCULATE",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
