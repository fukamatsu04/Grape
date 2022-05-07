import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
import 'package:login/login_screen.dart';
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
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeScreen();
            } else {
              return LoginScreen();
            }
          }),
      routes: {
        SingUPscreen.id: (context) => SingUPscreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
