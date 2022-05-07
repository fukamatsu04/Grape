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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
              const SizedBox(
                width: 200.0,
              ),
              IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 29.0,
                ),
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.purple[900],
                      title: const Text(
                        "Alert",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      content: const Text(
                        "Do you want to logout?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.purpleAccent[400],
                            ),
                          ),
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "No",
                            style: TextStyle(
                              color: Colors.purpleAccent[400],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//FirebaseAuth.instance.signOut(),