import 'package:flutter/material.dart';
import 'package:ikem_hack/widgets/main_nav_buttons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CareMunity"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Kdo jste?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                const MainNavButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
