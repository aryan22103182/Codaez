import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile: $username")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),

            const SizedBox(height: 20),

            Text(username,
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),

            const Text("Level 7 • Points: 1200"),

            const SizedBox(height: 30),

            const Text("Achievements:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, size: 30, color: Colors.amber),
                SizedBox(width: 10),
                Icon(Icons.military_tech, size: 30, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.bolt, size: 30, color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
