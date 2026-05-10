import 'package:flutter/material.dart';
import 'package:employee/data/employee.dart';
import '../models/employee.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  // Define a palette of colors to cycle through
  final List<Color> cardColors = const [
    Colors.lightBlueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.tealAccent,
    Colors.pinkAccent,
    Colors.amberAccent,
    Colors.cyanAccent,
  ];
  // Map each department to a specific color
  // Color _getDepartmentColor(String department) {
  //   switch (department.toLowerCase()) {
  //     case 'it':
  //       return Colors.blue.shade200;
  //     case 'hr':
  //       return Colors.pink.shade200;
  //     case 'finance':
  //       return Colors.green.shade200;
  //     case 'marketing':
  //       return Colors.orange.shade200;
  //     case 'operations':
  //       return Colors.purple.shade200;
  //     case 'sales':
  //       return Colors.teal.shade200;
  //     case 'support':
  //       return Colors.red.shade200;
  //     case 'design':
  //       return Colors.amber.shade200;
  //     default:
  //       return Colors.grey.shade300; // fallback color
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200, // static background
      appBar: AppBar(title: const Text('Employees')),
      body: ListView.separated(
        itemCount: employees.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final Employee emp = employees[index];
          final Color cardColor =
              cardColors[index % cardColors.length]; // cycle colors

          return Card(
            color: cardColor.withOpacity(0.7), // softer background
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Employee ID: ${emp.id}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Full Name: ${emp.fullname}"),
                  Text("Gender: ${emp.gender}"),
                  Text("Department: ${emp.department}"),
                  Text("Username: ${emp.username}"),
                  Text("Password: ${emp.password}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
