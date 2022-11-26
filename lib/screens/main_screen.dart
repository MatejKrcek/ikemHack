import 'package:flutter/material.dart';
import 'package:ikem_hack/screens/edu_screen.dart';
import 'package:ikem_hack/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    const EduSceeen(),
    const ProfileScreen(),
  ];
  final List<String> _toolTips = [
    "Edukace",
    "POMOC",
    "Profil",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Potřebujeme tvou pomoc'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          switch (index) {
            case 0:
              setState(() {
                _currentIndex = 0;
              });
              break;
            case 1:
              setState(() {
                _currentIndex = 1;
              });
              break;
            case 2:
              setState(() {
                _currentIndex = 2;
              });
              break;
            default:
          }
        },
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        items: [
          Icons.list,
          Icons.heart_broken_outlined,
          Icons.person,
        ]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: _toolTips[key],
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? Colors.red
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _currentIndex == 1
              ? Column(
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/maps.jpg",
                      fit: BoxFit.cover,
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
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
                          children: const [
                            Text(
                              "K Zelelé louce, ",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "230 m, 4 min",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              : _currentIndex == 0
                  ? _children[0]
                  : _children[1]),
    );
  }
}
