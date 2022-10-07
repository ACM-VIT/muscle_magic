import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                  color: Color(0xFF961414),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/squat.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Agneya Kalathil',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'agneyaka2002@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileInfo(feature: "Name", value: "Agneya Kalathil"),
                    ProfileInfo(feature: "DOB", value: "01/01/2002"),
                    ProfileInfo(feature: "Height", value: "171 cm"),
                    ProfileInfo(feature: "Weight", value: "60kg"),
                  ],
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 20,
                  minimumSize: const Size.fromHeight(50),

                  primary: const Color(0xFF961414)),
              child: const Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String feature;
  final String value;
  const ProfileInfo({super.key, required this.feature, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            feature,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
