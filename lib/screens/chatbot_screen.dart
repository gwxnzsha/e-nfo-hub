import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  final String apiKey = "AIzaSyC4N8aRRqQ0t97e1KMFvEHEj1hn3fQFMrA";

  late GenerativeModel _model;
  late ChatSession _chat;

  @override
  void initState() {
    super.initState();

    _model = GenerativeModel(
      model: "gemini-2.0-flash", 
      apiKey: apiKey,
    );

    _chat = _model.startChat(
      history: [
        Content.text(
          "You are Ennie, a friendly e-waste learning companion. "
          "Always explain in simple, encouraging terms about e-waste, recycling, reuse, and environmental safety.",
        ),
      ],
    );
  }

  Future<void> _sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    setState(() {
      _messages.add({"sender": "user", "text": text});
    });

    _controller.clear();

    try {
      final response = await _chat.sendMessage(Content.text(text));
      final reply =
          response.text ??
          "Hi, I’m Ennie 🌱! I’m your e-waste learning companion. Ask me anything about e-waste, recycling, or how to care for our planet 🌍.";

      setState(() {
        _messages.add({"sender": "bot", "text": reply});
      });
    } catch (e) {
      setState(() {
        _messages.add({
          "sender": "bot",
          "text": "⚠️ Oops, I couldn’t connect right now. Try again later!",
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF6),
      appBar: AppBar(
        title: const Text("Chat with Ennie"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Chat messages
          Expanded(
            child: _messages.isEmpty
                ? const Center(
                    child: Text(
                      "Ask me anything about e-waste! 🌱",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final msg = _messages[index];
                      bool isUser = msg["sender"] == "user";

                      return Align(
                        alignment: isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: isUser
                                ? Colors.green[200]
                                : const Color(0xFFDCF8C6), 
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            msg["text"] ?? "",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      );
                    },
                  ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            color: Colors.grey[200],
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Ask Ennie about e-waste...",
                      border: InputBorder.none,
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.green),
                  onPressed: () => _sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
