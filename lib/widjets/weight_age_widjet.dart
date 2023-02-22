import 'package:flutter/material.dart';

class WeightAgeWidjet extends StatelessWidget {
  const WeightAgeWidjet(
      {Key? key,
      required this.icons,
      required this.weightAge,
      required this.addremove,
      required this.num})
      : super(key: key);

  final String weightAge;
  final IconData addremove;
  final IconData icons;
  final String num;
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
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
          child: Column(
            children: [
              Text(
                weightAge,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                num,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    backgroundColor: const Color(0xff5c5b5b),
                    mini: true,
                    onPressed: () {
                      
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: const Color(0xff5c5b5b),
                    mini: true,
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
