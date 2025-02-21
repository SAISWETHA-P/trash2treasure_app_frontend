import 'package:flutter/material.dart';
import 'start_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'role_selection_page.dart';

void main() {
  runApp(Trash2TreasureApp());
}

class Trash2TreasureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/start': (context) => StartPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/roleSelection': (context) => RoleSelectionPage(),
      },
    );
  }
}

// Landing Page remains in main.dart
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/landing.jpeg', fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(
              'Trash2Treasure',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/start');
              },
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
