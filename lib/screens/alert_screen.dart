import 'dart:async';

import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  int _currentTime = 10;
  Timer? _timer;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_currentTime == 0) {
          setState(() {
            timer.cancel();
          });
          Navigator.of(context).pop();
        } else {
          setState(() {
            _currentTime--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nové upozornění!'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Zástava srdce, 330 m',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Pomůžete?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Text(
            '$_currentTime s',
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 50),
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text("Ano"),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: const Text("Ne"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
