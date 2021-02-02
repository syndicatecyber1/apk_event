import 'package:flutter/material.dart';
import 'package:tes_apk/screen/home.dart';
import 'package:tes_apk/screen/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
