import 'package:flutter/material.dart';

class TrackOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Order"),
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
