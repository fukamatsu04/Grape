import 'package:flutter/material.dart';

const Color kFocusedBorderColor = Color.fromARGB(255, 218, 6, 165);

BoxDecoration kGradientBackground = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.purple[400]!, Colors.purple[900]!]),
);
