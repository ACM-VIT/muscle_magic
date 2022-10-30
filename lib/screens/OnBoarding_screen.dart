import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muscle_magic/screens/main_screen.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        pageBackgroundColor: Colors.blueGrey.shade400,
        headerBackgroundColor: Colors.blueGrey.shade400,
        controllerColor: Colors.blueGrey.shade800,
        finishButtonText: 'Let\'s GO',
        skipFunctionOverride: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
          );
        },
        onFinish: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
          );
        },
        finishButtonColor: Colors.blueGrey.shade800,
        skipTextButton: Text(
          'Skip',
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.blueGrey.shade800,
              fontWeight: FontWeight.w500),
        ),
        trailing: Text(
          'Skip',
          style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.blueGrey.shade800,
              fontWeight: FontWeight.w500),
        ),
        background: [
          Center(
            child: Image.asset(
              'assets/squat.png',
              width: 600,
              height: 600,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/squat.png',
              width: 600,
              height: 600,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/squat.png',
              width: 600,
              height: 600,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Measure your progress.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: Text(
                    'Compete with other users.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: Text(
                    'You are ready!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
