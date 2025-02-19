import 'package:flutter/material.dart';
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
        '/roleSelection': (context) => RoleSelectionPage(), // Add this line

      },
    );
  }
}

// Landing Page
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/landing.jpeg', fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            // Title Text
            Text(
              'Trash2Treasure',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            // Get Started Button
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
            // Sign In Text Button
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

// Start Page
class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Start Page Image
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/start.jpeg', fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            // Heading Text
            Text(
              'Your Hobbies are Million Dollar Worth',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sign Up Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 20),
                // Log In Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.green),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Or Continue With Text
            Text('Or continue with', style: TextStyle(color: Colors.black)),
            SizedBox(height: 20),
            // Social Media Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.g_translate, color: Colors.green),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.apple, color: Colors.black),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook, color: Colors.blue),
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Login Page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(  // Centers the entire body
        child: SingleChildScrollView( // Allows scrolling if content overflows
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,  // Centers the children horizontally
              children: [
                // Login Image
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    'assets/images/loginpage.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                // Login Buttons
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/roleSelection');
                  },
                  child: Text(
                    'LOGIN AS USER',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Text(
                    'LOGIN AS INDUSTRY',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// Register Page
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Allow scrolling if content overflows
        child: Center( // Centers the whole content
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // Centers horizontally
              children: [
                // Register Image
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/register.jpeg', fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                // Create Account Text
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                // Input Fields
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Create Password',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Sign Up Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                // Google Sign-In Button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.green),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  icon: Icon(Icons.g_translate, color: Colors.green),
                  onPressed: () {},
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
