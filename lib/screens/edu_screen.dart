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
      ],
    );
  }
}
