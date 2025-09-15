import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'quiz_intro_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: false,
        title: PopupMenuButton<String>(
          onSelected: (value) async {
            if (value == 'logout') {
              await FirebaseAuth.instance.signOut();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Logged out successfully")),
              );
            }
          },
          itemBuilder: (context) => [
            if (user != null)
              const PopupMenuItem(value: 'logout', child: Text('Logout')),
          ],
          child: Row(
            children: [
              Image.asset("assets/logo.png", height: 35),
              const SizedBox(width: 8),
              const Text(
                "E-nfo Hub",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Icon(Icons.arrow_drop_down, color: Colors.green),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9CCC65),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizIntroScreen(),
                  ),
                );
              },
              child: const Text(
                "Quiz",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Mission Section
            Image.asset("assets/8.png", height: 180),
            const SizedBox(height: 12),
            const Text(
              "Our Mission",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              "At E-nfo Hub, our mission is to empower individuals and communities with the "
              "knowledge they need to handle e-waste properly. By providing clear, accessible "
              "information, we help reduce the harmful impact of discarded electronics on our "
              "environment and health.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 30),

            // Vision Section
            Image.asset("assets/3.png", height: 180),
            const SizedBox(height: 12),
            const Text(
              "Our Vision",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              "We envision a world where technology and sustainability go hand in hand, "
              "where electronic devices are managed in a way that leaves no harmful trace on the planet.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 30),

            // Who We Serve Section
            const Text(
              "Who We Serve",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              "Our website is for everyone:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Info Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _infoBox(
                    "Students",
                    "looking to learn about environmental responsibility.",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _infoBox(
                    "Households",
                    "who want to manage old gadgets sustainably.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _infoBox(
                    "Businesses",
                    "aiming to reduce their electronic footprint.",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _infoBox(
                    "Communities",
                    "building eco-friendly habits together.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // info card
  static Widget _infoBox(String title, String description) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFE9F5E7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: const TextStyle(fontSize: 14, height: 1.3),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
