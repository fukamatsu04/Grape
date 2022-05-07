import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';
import 'const_and_colors.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: Container(
        decoration: kGradientBackground,
        child: SafeArea(
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () => FirebaseAuth.instance.signOut(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
