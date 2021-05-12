import 'package:flutter/material.dart';
import 'package:khata_book/sign/sign_in.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:khata_book/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khata Book',
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

