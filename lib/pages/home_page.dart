import 'package:bmi_calc_app/constants/colors/app_colors.dart';
import 'package:bmi_calc_app/constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../widjets/genderconteinerwidjet.dart';
import '../widjets/weight_age_widjet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override

  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentHeightState = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff211834),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.secondaryColor,
        title: Center(
            child: Text("BMI CALCULATOR", style: AppTextStyles.white22w500)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GenderConteiner(
                icons: Icons.male,
                genderText: 'Male',
              ),
              GenderConteiner(
                icons: Icons.female,
                genderText: 'Female',
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff0B0120),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        currentHeightState.toStringAsFixed(0),
                        style: const TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                    thumbColor: Colors.pink,
                    value: currentHeightState,
                    onChanged: (double userValue) {
                      setState(() {});
                      currentHeightState = userValue;
                    },
                    max: 220,
                    min: 20,
                  ),
                ]),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              WeightAgeWidjet(
                weightAge: 'WEIGHT',
                num: "60",
                icons: Icons.remove,
                addremove: Icons.add,
              ),
              WeightAgeWidjet(
                weightAge: 'AGE',
                num: "28",
                icons: Icons.remove,
                addremove: Icons.add,
              )
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Container(
          child: const Text(
        "Calculate screen",
      )),
    );
  }
}
