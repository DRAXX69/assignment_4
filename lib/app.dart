import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/employee_screen.dart';
import 'screens/gridview_screen.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DashboardScreen(),
      routes: {
        '/dashboard': (context) => const DashboardScreen(),
        '/employees': (context) => const EmployeeScreen(),
        '/gridview': (context) => const GridViewScreen(),
      },
    );
  }
}
