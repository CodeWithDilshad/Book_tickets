// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/colors.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:book_tickets/Screens/Bottom_bar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primarySwatch: CustomSwatch.customSwatch,
      ),
      home: MyBottomBar(),
    );
  }
}
