import 'package:flutter/material.dart';
import 'waste_selection_page.dart';  // Import the second page
class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Your Role"),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select how you'll participate in making our environment cleaner",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WasteSelectionPage()),
                    );
                  },
                  child: RoleCard(icon: Icons.person, text: "Individual Consumer"),
                ),
                RoleCard(icon: Icons.apartment, text: "Bulk Waste Generator"),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Select Waste Categories for recycle informations",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  CategoryCard(icon: Icons.recycling, text: "Plastics"),
                  CategoryCard(icon: Icons.description, text: "Paper"),
                  CategoryCard(icon: Icons.memory, text: "E-Waste"),
                  CategoryCard(icon: Icons.build, text: "Metals"),
                  CategoryCard(icon: Icons.eco, text: "Organic Waste"),
                  CategoryCard(icon: Icons.biotech, text: "Bio-Waste"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleCard extends StatelessWidget {
  final IconData icon;
  final String text;

  RoleCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 1),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 40, color: Colors.green),
          SizedBox(height: 8),
          Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String text;

  CategoryCard({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 3, spreadRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: Colors.green),
          SizedBox(width: 8),
          Text(text, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
