import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text("Menu", style: TextStyle(fontSize: 24)),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Landing"),
            onTap: () => Navigator.pushNamed(context, "/"),
          ),

          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text("Dashboard"),
            onTap: () => Navigator.pushNamed(context, "/dashboard"),
          ),

          ListTile(
            leading: const Icon(Icons.leaderboard),
            title: const Text("Leaderboard"),
            onTap: () => Navigator.pushNamed(context, "/leaderboard"),
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Profile"),
            onTap: () => Navigator.pushNamed(context, "/profile/you"),
          ),
        ],
      ),
    );
  }
}
