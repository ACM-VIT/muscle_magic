import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePageScreen(),
    );
  }
}

class ProfilePageScreen extends StatelessWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/db.jpg"),
            opacity: 0.6,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const Image(
              image: AssetImage("images/buffg.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xFF961414),
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white.withOpacity(.60),
                selectedFontSize: 20,
                unselectedFontSize: 10,
                onTap: (value) {
                  print("nuts");
                },
                items: const [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Board",
                    icon: Icon(Icons.list_alt_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: "Statistics",
                    icon: Icon(Icons.leaderboard),
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
            ),
          ],
        ),
      ),
    );
  }
}
