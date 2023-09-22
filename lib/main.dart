import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      initialRoute: '/login', // Menetapkan rute awal ke halaman login
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
