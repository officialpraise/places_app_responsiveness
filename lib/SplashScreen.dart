import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:places_responsive_app/ui/home.dart';



class SplashScreenAnimated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(backgroundColor: Colors.blue,
        splash: SplashScreen(),
        nextScreen: PlaceDetail(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 7000,
        splashIconSize: MediaQuery
            .of(context)
            .size
            .height);
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blue),
          height: 300,
          width: 300,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitThreeBounce(color: Colors.white, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
