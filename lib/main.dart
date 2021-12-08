import 'package:flutter/material.dart';
import 'package:umpds_test_two/Screen/Admin/admin_dashboard.dart';
import 'package:umpds_test_two/Screen/Student/student_dashboard.dart';
import 'package:umpds_test_two/Screen/Welcome/welcome.dart';


void main() {
  runApp(UMPDS());
}

class UMPDS extends StatelessWidget {
  //const UMPDS({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UMPDS',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcome(), //at welcome.dart
      //home: HomeScreen(), //at home.dart
      // home: Admin_Dashboard(), //at home.dart

    );
  }
}
