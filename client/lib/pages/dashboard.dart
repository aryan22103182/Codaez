import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Widget statCard(String title, String value, IconData icon) {
    return Card(
      elevation: 3,
      child: SizedBox(
        width: 150,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            const SizedBox(height: 10),
            Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(title),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Dashboard", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              statCard("Points", "120", Icons.star),
              statCard("Rank", "#15", Icons.emoji_events),
            ],
          ),

          const SizedBox(height: 30),
          const Text("Your Progress Chart", style: TextStyle(fontSize: 20)),

          const SizedBox(height: 10),

          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[300],
            ),
            child: const Center(child: Text("Chart Placeholder")),
          )
        ],
      ),
    );
  }
}
