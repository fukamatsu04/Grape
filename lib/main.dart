import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/sing_up_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(LogIn());
}

// ignore: use_key_in_widget_constructors
class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        SingUPscreen.id: (context) => SingUPscreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
