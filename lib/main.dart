import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:places_responsive_app/SplashScreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(MaterialApp(
    home: SplashScreenAnimated(),
    debugShowCheckedModeBanner: false,
  ));
}

