import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:buyer/home.dart';
import 'package:flutter/material.dart';
import 'package:buyer/API.dart';

class Splashscreen extends StatefulWidget {
  // APIservice apIservice = APIservice();
  //
  // getProducts() async {
  //   await apIservice.getProductList();
  // }
  @override
  // void initState() {
  //   getProducts();
  // }
  _SplashscreenState createState() => _SplashscreenState();

}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            'assets/images/avshesh_logo_final.png',
            colorBlendMode: BlendMode.colorBurn,
            width: 1000,
            height: 1000,
          ),
          splashIconSize: double.maxFinite,
          nextScreen: Home(),
          splashTransition: SplashTransition.fadeTransition,
        )
    );
  }
}