import 'package:flutter/material.dart';
import 'package:muscle_magic/screens/excercise_screen.dart';
import 'package:muscle_magic/screens/home_screen.dart';
import 'package:muscle_magic/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    const HomeScreen(),
    const ExcerciseScreen(),
    const ProfileScreen()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
     bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xFF961414),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 20,
                unselectedFontSize: 10,
                currentIndex: currentIndex,
                onTap: onTap,
                items: const [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Excercises",
                    icon: Icon(Icons.list_alt_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: "Profile",
                    icon: Icon(Icons.manage_accounts),
                  ),
                 
                ],
                unselectedLabelStyle:
                    const TextStyle(fontSize: 10, fontFamily: 'Poppins'),
                selectedLabelStyle:
                    const TextStyle(fontSize: 18, fontFamily: 'Poppins'),
              ),
    );
  }
}




