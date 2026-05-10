import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/employees'),
              child: const Text('Employee Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/gridview'),
              child: const Text('GridView Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
