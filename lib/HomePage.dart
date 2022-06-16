import 'package:bmical/MoreInfo.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Function sliderFunction;
  late final double units = 0;
  late double _height = 0;
  late double _weight = 0;
  late String _precise = "0";
  late String _precise2 = "0";
  double _bmi = 0.0;

  String getbmi() {
    calculateBMI();
    return _bmi.toStringAsFixed(1);
  }

  void calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              "BMI",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 7),
            ),
            const Text(
              "CALCULATOR",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 7),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: const [
                // SizedBox(
                //   width: 45,
                // ),
                // Container(
                //   constraints: BoxConstraints(maxWidth: 120.0, maxHeight: 60),
                //   decoration: BoxDecoration(
                //     image: new DecorationImage(image: new AssetImage("assets/male.png"),),
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                // ),

// SizedBox(width: 15,),
                // Container(
                //   constraints: BoxConstraints(maxWidth: 120.0, maxHeight: 60),
                //   padding: EdgeInsets.all(1),
                //   decoration: BoxDecoration(
                //     image: new DecorationImage(image: new AssetImage("assets/woman.jpg")),
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                // ),
                // SizedBox(width: 50,),
              ],
            ),

            // SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "Height : $_precise2" "cm",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 300.0, maxHeight: 80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Slider(
                  max: 200,
                  min: 0,
                  activeColor: Colors.grey,
                  thumbColor: Colors.black87,
                  value: _height,
                  onChanged: (double value) {
                    setState(() {
                      _height = value;
                      _precise2 = _height.toStringAsFixed(0);
                    });
                  }),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "Weight : $_precise " "KG",
                  style: TextStyle(
                    color: Colors.grey.shade100,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 300.0,
                maxHeight: 80,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Slider(
                  max: 200,
                  min: 0,
                  activeColor: Colors.grey,
                  thumbColor: Colors.black87,
                  value: _weight,
                  onChanged: (double value) {
                    setState(() {
                      _weight = value;
                      _precise = _weight.toStringAsFixed(0);
                    });
                  }),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
               const Text(
                  "BMI",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Container(
                  padding:const EdgeInsets.all(35),
                  constraints: const BoxConstraints(
                    maxWidth: 110.0,
                    maxHeight: 100,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    getbmi(),
                    style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                    height: 20,
                ),
                ElevatedButton(
                  autofocus: false,
                  style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    "More Info  ",
                    style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoreInfo(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
