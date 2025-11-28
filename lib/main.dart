
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<String> quotes = [
    "Believe in yourself.",
    "Hard work beats talent.",
    "Every day is a new chance.",
    "Success comes to those who persist.",
    "Small steps make big changes."
  ];

  String currentQuote = "";

  @override
  void initState() {
    super.initState();
    currentQuote = quotes[0];
  }

  void refreshQuote() {
    final random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: refreshQuote,
                child: Text("Refresh"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
