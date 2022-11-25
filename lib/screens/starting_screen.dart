import 'package:flutter/material.dart';
import 'package:ikem_hack/widgets/main_nav_buttons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AED App"),
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
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: const [
      //           Text(
      //             'Who are you?',
      //             style: TextStyle(
      //               fontSize: 17,
      //             ),
      //           ),
      //         ],
      //       ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //           RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(15),
      //           ),
      //         ),
      //       ),
      //       child: const Text('Lékař'),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //           RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(15),
      //           ),
      //         ),
      //       ),
      //       child: const Text('Zdravotní sestra'),
      //     ),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //           RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(15),
      //           ),
      //         ),
      //       ),
      //       child: const Text('Záchranář'),
      //     ),
      //     const SizedBox(
      //       width: 10,
      //     ),
      //     ElevatedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //           RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(15),
      //           ),
      //         ),
      //       ),
      //       child: const Text('Student medicíny'),
      //     ),
      //   ],
      // ),
      //       ],
      //     ),
      //   ),
    );
  }
}
