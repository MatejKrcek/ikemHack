import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Nastavení profilu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 40,
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Karel Lahváček'),
            Icon(
              Icons.verified_outlined,
              color: Colors.red,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Lékař'),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          controller: controller,
          maxLength: 30,
          style: TextStyle(color: Colors.grey[800]),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            counterText: "",
            hintText: 'Přidat osobní číslo',
            hintStyle: TextStyle(color: Colors.grey[800]),
            prefixIcon: const Icon(
              Icons.numbers,
            ),
          ),
        ),
      ],
    );
  }
}
