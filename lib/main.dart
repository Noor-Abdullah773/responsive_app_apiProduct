import 'package:flutter/material.dart';

import 'core/view/homePage.dart';
import 'core/view/screens/responsiveScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ResponsiveScreen() ,
    );
  }
}