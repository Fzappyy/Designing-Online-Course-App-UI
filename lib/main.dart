// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_course_app/pages/course_detail.dart';
import 'package:online_course_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/course_detail': (context) => CourseDetailScreen(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
