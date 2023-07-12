import 'package:flutter/material.dart';
import 'package:uas/login_pages/main.dart';
// import 'package:uas/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Pages(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
