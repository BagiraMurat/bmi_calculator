import 'package:flutter/material.dart';

class GenderConteiner extends StatelessWidget {
  const GenderConteiner({
    Key? key,
    required this.genderText,
    required this.icons,
  }) : super(key: key);

  final IconData icons;
  final String? genderText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff0B0120),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            children: [
              Icon(
                icons,
                size: 100,
                color: Colors.white,
              ),
              Text(
                genderText!.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.8),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
