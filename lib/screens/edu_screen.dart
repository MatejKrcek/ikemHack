import 'package:flutter/material.dart';

class EduSceeen extends StatelessWidget {
  const EduSceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Vzdělávací stránka',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 490,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  "Kurz první pomoci",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 490,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  "3 tipy, jak použít AED",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ), 
      ],
    );
  }
}
