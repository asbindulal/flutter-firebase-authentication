import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomePage'),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut().then(
                    (value) =>
                        Navigator.of(context).pushReplacementNamed('/login'),
                  );
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: const Center(
          child: Text(
        'HomePage',
        textScaleFactor: 2,
      )),
    );
  }
}
