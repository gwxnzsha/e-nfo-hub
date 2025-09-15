import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'about_screen.dart';
import 'quiz_intro_screen.dart';
import 'chatbot_screen.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
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
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SECTION 1: What is E-Waste?
                const Text(
                  "What is E-Waste?",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Electronic waste, or e-waste, refers to discarded electronic devices "
                  "such as old phones, computers, appliances, and accessories. "
                  "These contain valuable materials but also harmful substances "
                  "if not disposed of properly.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
                const SizedBox(height: 20),
                _mainButton("About us", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                }),
                const SizedBox(height: 30),

                // SECTION 2: Types of E-Waste
                const Text(
                  "Types of E-Waste",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Image.asset("assets/10.png", height: 180),
                const SizedBox(height: 16),
                _infoBox(
                  "Small gadgets",
                  "Like smartphones, tablets, and accessories.",
                ),
                _infoBox(
                  "Large appliances",
                  "Such as refrigerators, washing machines, and TVs.",
                ),
                _infoBox(
                  "Computer accessories",
                  "Keyboards, printers, monitors, and cables.",
                ),
                const SizedBox(height: 30),

                // SECTION 3: How to Manage
                const Text(
                  "How to Manage E-Waste",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Image.asset("assets/7.png", height: 180),
                const SizedBox(height: 16),
                _infoBox(
                  "Reduce",
                  "Buy only what you need. Choose durable devices.",
                ),
                _infoBox(
                  "Reuse",
                  "Donate or sell gadgets that are still functional.",
                ),
                _infoBox("Recycle", "Take e-waste to recycling centers."),
                _infoBox(
                  "Repair",
                  "Fix broken devices instead of throwing them away.",
                ),
                const SizedBox(height: 30),

                // SECTION 4: Local Solutions
                const Text(
                  "Local Solutions",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Image.asset("assets/2.png", height: 180),
                const SizedBox(height: 16),
                const Text(
                  "Check your community for e-waste collection programs, "
                  "drop-off points, and recycling centers. "
                  "Some electronics shops also accept devices for disposal.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
                const SizedBox(height: 20),
                _mainButton("Test Yourself", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizIntroScreen(),
                    ),
                  );
                }),
                const SizedBox(height: 80), 
              ],
            ),
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatBotScreen(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: Image.asset("assets/ennie.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //main button
  Widget _mainButton(String text, VoidCallback onPressed) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.green, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  // info box
  Widget _infoBox(String title, String description) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFE9F5E7),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.eco, color: Colors.green),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              "$title: $description",
              style: const TextStyle(fontSize: 16, height: 1.3),
            ),
          ),
        ],
      ),
    );
  }
}
