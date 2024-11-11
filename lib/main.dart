import 'package:flutter/material.dart';
import 'package:university_checker/views/face_verification.dart';
import 'package:university_checker/views/faculty_data.dart';
import 'package:university_checker/views/leave_duration.dart';
import 'package:university_checker/views/lost_id.dart';
import 'package:university_checker/views/report_screen.dart';
import '../views/splash_screen.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University Checker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: LeaveDuration(),
    );
  }
}
