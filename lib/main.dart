import 'package:flutter/material.dart';
import 'package:my_app/screens/onboarding_screen.dart';
import 'package:my_app/screens/checkout_screen.dart';
import 'package:my_app/screens/payment_method_screen.dart';
import 'package:my_app/screens/voucher_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Onboarding UI',
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
    // home: CheckoutPage());
    // home: PaymentMethodPage());
    // home: VoucherPage());
  }
}
