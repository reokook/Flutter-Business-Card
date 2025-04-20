import 'package:flutter/material.dart';

void main() {
  runApp(const MyBusinessCardApp());
}

class MyBusinessCardApp extends StatelessWidget {
  const MyBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      debugShowCheckedModeBanner: false,
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 161, 196),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/photo.jpeg'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Reo DE Kim',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 60,
              endIndent: 60,
              color: Colors.white54,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 255, 0, 140),
                  ),
                  title: Text('+962797036915', style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 255, 0, 140),
                  ),
                  title: Text(
                    'amlalhlaly668@email.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
