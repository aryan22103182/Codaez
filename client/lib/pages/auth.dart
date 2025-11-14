import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: "Email")),
            const SizedBox(height: 10),
            TextField(decoration: const InputDecoration(labelText: "Password"), obscureText: true),

            if (!isLogin)
              const SizedBox(height: 10),

            if (!isLogin)
              TextField(decoration: const InputDecoration(labelText: "Username")),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text(isLogin ? "Login" : "Register"),
            ),

            const SizedBox(height: 10),

            TextButton(
              onPressed: () => setState(() => isLogin = !isLogin),
              child: Text(isLogin
                  ? "Create an account"
                  : "Already have an account? Login"),
            )
          ],
        ),
      ),
    );
  }
}
