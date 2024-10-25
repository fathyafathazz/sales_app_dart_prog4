import 'package:flutter/material.dart';
import 'package:sales_app/home.dart';
import 'dashboard_page.dart';
import 'add_sales.dart';
import 'update_sales.dart';
import 'login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Set halaman awal menjadi DashboardPage
      routes: {
        '/home': (context) => HomePage(),
        '/dashboard': (context) => DashboardPage(),
        '/add': (context) => AddSalesPage(),
        '/update': (context) => UpdateSalesPage(),
        '/logout': (context) => LoginPage(),
      },
    );
  }
}
