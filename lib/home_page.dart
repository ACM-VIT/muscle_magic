import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.only(top: 400, left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  print("nuts2");
                },
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    minimumSize: const Size.fromHeight(50),
                    primary: const Color(0xFF961414)),
                child: const Text(
                  "Create workout",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                      fontSize: 20),
                ),
              ),
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
