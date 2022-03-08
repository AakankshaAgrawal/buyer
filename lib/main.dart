import 'package:buyer/home.dart';
import 'package:flutter/material.dart';
import 'package:buyer/splash screen.dart';
import 'package:buyer/profile.dart';
import 'package:buyer/register.dart';
import 'package:buyer/login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        home: Splashscreen(),
        routes: {
        Register.route: (context) => Register(),
          Login.route: (context) => Login(),
          Home.route: (context) => Home(),
          Profile.route: (context) => Profile(),
    },
    );
  }
}



