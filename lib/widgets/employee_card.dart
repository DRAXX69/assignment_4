import 'package:flutter/material.dart';
import '../models/employee.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;

  final Color color;

  const EmployeeCard({super.key, required this.employee, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(employee.fullname),
        subtitle: Text(
          "Dept: ${employee.department} | Gender: ${employee.gender}",
        ),
        trailing: Text("User: ${employee.username}"),
      ),
    );
  }
}
