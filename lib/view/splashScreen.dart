import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:port_folio_app/utils/app_colors.dart';
import 'package:port_folio_app/view/LoginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedSplashScreen(
      splashIconSize: 250,
      splashTransition: SplashTransition.slideTransition,
      duration: 4000,
      backgroundColor: AppColors.appPrimary,
      splash:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Container(
             height:110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,

                // Background color
              ),
              child: Padding(
                padding: const EdgeInsets.all(14), // Adjust as needed
                child: Image.asset(
                  "assets/Icons/splashIcon.png",
                  color: Colors.black,
                  height: 20,
                ),
              ),

          ),
          SizedBox(height: 30),
          Image.asset(
              "assets/Icons/text.png",
              color: Colors.black,
            height: 30,
            ),

        ],
     ),
     nextScreen: LoginPage(),
    );
  }
}
