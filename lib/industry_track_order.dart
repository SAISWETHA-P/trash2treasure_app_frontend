import 'package:flutter/material.dart';

class IndustryTrackOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Track Order",
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Add navigation or function for the profile icon here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Profile icon clicked!")),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          "Your order is being processed!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
