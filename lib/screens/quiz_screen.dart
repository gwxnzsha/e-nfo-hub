import 'dart:math';
import 'package:flutter/material.dart';
import '../models/question.dart';
import '../data/question_data.dart';
import '../models/quiz_result.dart';
import '../data/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Question> quizQuestions;
  int currentIndex = 0;
  int score = 0;
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    _startQuiz();
  }

  void _startQuiz() {
    final random = Random();
    quizQuestions = List<Question>.from(questionPool)..shuffle(random);
    quizQuestions = quizQuestions.take(5).toList();
    currentIndex = 0;
    score = 0;
    selectedIndex = null;
  }

  void _checkAnswer() {
    if (selectedIndex == null) return;
    bool isCorrect = selectedIndex == quizQuestions[currentIndex].correctIndex;
    if (isCorrect) score++;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isCorrect ? "assets/ennie_yes.png" : "assets/ennie_no.png",
              height: 80,
            ),
            const SizedBox(height: 10),
            Text(
              isCorrect ? "Correct!" : "Wrong Answer",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isCorrect ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              quizQuestions[currentIndex].explanation,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _nextQuestion();
            },
            child: const Text("Next"),
          )
        ],
      ),
    );
  }

  void _nextQuestion() {
    if (currentIndex < quizQuestions.length - 1) {
      setState(() {
        currentIndex++;
        selectedIndex = null;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    // ✅ Save quiz result into history manager
    QuizHistoryManager.addResult(
      QuizResult(
        title: "E-Waste Quiz",
        score: score,
        totalQuestions: quizQuestions.length,
        date: DateTime.now(),
      ),
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/ennie.png", height: 80),
            const SizedBox(height: 10),
            Text(
              "You got $score/${quizQuestions.length}!",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Great job — keep learning about e-waste!"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _startQuiz();
              });
            },
            child: const Text("Try Again"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = quizQuestions[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "E-Waste Quiz",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Question ${currentIndex + 1} of ${quizQuestions.length}"),
            const SizedBox(height: 5),
            LinearProgressIndicator(
              value: (currentIndex + 1) / quizQuestions.length,
              backgroundColor: Colors.grey[300],
              color: Colors.green,
            ),
            const SizedBox(height: 20),

            Image.asset("assets/ennie.png", height: 100),
            const SizedBox(height: 20),

            Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedIndex = index);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.green[100] : Colors.white,
                        border: Border.all(
                          color: isSelected ? Colors.green : Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        question.options[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? Colors.green[900] : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4E4B32),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: _checkAnswer,
              child: const Text(
                "Next Question",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
