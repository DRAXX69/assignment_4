import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"name": "Home", "icon": Icons.home},
      {"name": "Work", "icon": Icons.work},
      {"name": "Camera", "icon": Icons.camera_alt},
      {"name": "School", "icon": Icons.school},
      {"name": "Settings", "icon": Icons.settings},
      {"name": "Phone", "icon": Icons.phone},
      {"name": "Email", "icon": Icons.email},
      {"name": "Person", "icon": Icons.person},
      {"name": "Flutter", "icon": null}, // will use FlutterLogo
    ];

return Scaffold(
      backgroundColor: const Color(0xFFFFE9E9), // light reddish base
      appBar: AppBar(
        backgroundColor: const Color(0xFFD32F2F),
        foregroundColor: Colors.white,
        title: const Text('GridView'),
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3x3 matrix
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final bool isFlutter = items[index]["icon"] == null;

          return Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFCDD2),
                  Color(0xFFF8BBD0),
                ],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.15),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isFlutter
                        ? const FlutterLogo(size: 48)
                        : Icon(
                            items[index]["icon"],
                            size: 46,
                            color: const Color(0xFFB71C1C),
                          ),
                    const SizedBox(height: 10),
                    Text(
                      items[index]["name"],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF7F0000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
