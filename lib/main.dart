import 'package:flutter/material.dart';
import 'package:my_app/screens/onboarding_screen.dart';
import 'package:my_app/screens/list_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Onboarding UI',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
    // home: ListDetailPage());
  }
}
