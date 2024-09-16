import 'package:flutter/material.dart';
import 'screens/resetpass.dart';
import 'screens/phnologin.dart';
import 'screens/enterotp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and OTP UI',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      // Define named routes for navigation
      initialRoute: '/phnologin',
      routes: {
        '/resetpass': (context) => const ResetPassScreen(),
        '/phnologin': (context) => const PhnLoginScreen(),
        '/enterotp': (context) => const EnterOtpScreen(),
      },
    );
  }
}
