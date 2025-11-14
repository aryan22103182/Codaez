import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final players = [
      ["Aryan", "1500"],
      ["Rohan", "1230"],
      ["Mira", "1120"],
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Leaderboard")),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: CircleAvatar(child: Text("${i + 1}")),
            title: Text(players[i][0]),
            trailing: Text(players[i][1]),
          );
        },
      ),
    );
  }
}
