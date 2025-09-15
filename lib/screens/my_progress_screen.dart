import 'package:flutter/material.dart';
import '../data/quiz_data.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({super.key});

  Widget _buildCard(Widget child) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
        ],
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final history = QuizHistoryManager.history;

    final latestScore = history.isNotEmpty ? history.last.score : 0;
    final lastQuizTitle = history.isNotEmpty ? history.last.title : "No quizzes yet";
    final totalQuizzes = history.length;
    final averageScore = QuizHistoryManager.averageScore;

    final ecoLevel = (totalQuizzes ~/ 5) + 1;
    final ecoProgress = (averageScore).clamp(0.0, 1.0);

    final weeklyScores = history
        .take(3)
        .map((r) => r.score)
        .toList()
        .reversed
        .toList();

    // achievements
    final achievements = <String>[];
    if (totalQuizzes >= 1) achievements.add("First Quiz Completed!");
    if (averageScore > 0.8) achievements.add("Eco Genius: 80%+ Average!");
    if (totalQuizzes >= 5) achievements.add("Quiz Streak: 5 quizzes done!");

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text("My Progress",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset("assets/ennie.png", height: 100),
                const SizedBox(height: 10),
                const Text("Great job on your eco journey!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),

            // 🔹 Latest Score
            _buildCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Latest Score",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text("$latestScore/5  (Last Quiz: $lastQuizTitle)"),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: latestScore / 5,
                    color: Colors.green,
                  ),
                ],
              ),
            ),

            // 🔹 Progress Over Time
            if (weeklyScores.isNotEmpty)
              _buildCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Progress Over Time",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    for (int i = 0; i < weeklyScores.length; i++) ...[
                      Text("Quiz ${i + 1}   ${weeklyScores[i]}/5"),
                      LinearProgressIndicator(
                        value: weeklyScores[i] / 5,
                        color: Colors.green,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ],
                ),
              ),

            // 🔹 Eco Level
            _buildCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Your Eco Level",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text("Level $ecoLevel of 5"),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(value: ecoProgress, color: Colors.green),
                  const SizedBox(height: 8),
                  Text("Progress to next level → ${(ecoProgress * 100).toInt()}%"),
                ],
              ),
            ),

            // 🔹 Quizzes Completed + Avg Score
            _buildCard(
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$totalQuizzes",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text("Quizzes Completed"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${(averageScore * 100).toInt()}%",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text("Average Score"),
                    ],
                  ),
                ],
              ),
            ),

            // Achievements
            if (achievements.isNotEmpty)
              _buildCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Recent Achievements",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    for (var achievement in achievements) ...[
                      Text("🏅 $achievement"),
                      const SizedBox(height: 6),
                    ],
                  ],
                ),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4E4B32),
                padding:
                const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text("Start Quiz",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
