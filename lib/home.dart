import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Management System'),
        backgroundColor: Color(0xFF448AFF),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: <Widget>[
                  _buildCard(context, Icons.dashboard, 'Dashboard', Color(0xFF448AFF), '/dashboard'),
                  _buildCard(context, Icons.add, 'Add Sales', Color(0xFFFF5252), '/add'),
                  _buildCard(context, Icons.update, 'Update Sales', Color(0xFF84F2BC), '/update'),
                  _buildCard(context, Icons.logout, 'Logout', Color(0xFF607D8B), '/logout'),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: Color(0xFF448AFF), // Mengganti warna latar belakang untuk teks
            child: Center(
              child: Text(
                "Fathya Fathimah Azzahra\n714220012",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, IconData icon, String title, Color color, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
