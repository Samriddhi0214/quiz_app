import 'package:flutter/material.dart';
import 'ResultPage.dart';
import 'MCQ.dart';
import 'StartScreen.dart';
import 'quiz.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _state = 1;
  void _toggle(int val) {
    setState(() {
      _state = val;
    });
  }

  Map<int, int> map = {};
  void _answerQuestion(int key, int val) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        map[key] = val;
      });
    });
  }

  List<MCQ> mcqs = [
    MCQ(
      id: 1,
      question: "Who got the first Oscar award in India?",
      options: [
        "a) Anil Kapoor",
        "b) AR Rahman",
        "c) Bhanu Athaiya",
        "d) None of these"
      ],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 2,
      question: " Who is known as the Father of Indian cinema?",
      options: [
        "a) Dhundiraj Govind Phalke",
        "b) Charan Singh",
        "c) Raja Lalith Rai",
        "d) Balram Naidu"
      ],
      correctOptionIndex: 0,
    ),
    MCQ(
      id: 3,
      question: "Which is the highest-grossing Indian film ever?",
      options: ["a) Bajrangi Bhaijaan", "b) PK", "c) Dangal", "d) Dhoom 3"],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 4,
      question: "Which actor has won the most national awards in India?",
      options: [
        "a) Shah Rukh Khan",
        "b) Amitabh Bachchan",
        "c) Aamir Khan",
        "d) Akshay Kumar"
      ],
      correctOptionIndex: 0,
    ),
    MCQ(
      id: 5,
      question: "Which director has directed the most movies in India?",
      options: [
        "a) Aditya Chopra",
        "b) Rohit Shetty",
        "c) Rajkumar Hirani",
        "d) Anurag Kashyap"
      ],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 6,
      question: "Which was the first Color movie in India?",
      options: [
        "a) Kisan Kanya",
        "b) Alam Ara",
        "c) Raja Harishchandra",
        "d) Om Jai Jagdish"
      ],
      correctOptionIndex: 0,
    ),
    MCQ(
      id: 7,
      question: "Which Hindi movie got the first National Award?",
      options: [
        "a) Shree 420",
        "b) Jagriti",
        "c) Mirza Ghalib",
        "d) Mera Naam Joker"
      ],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 8,
      question: "Which was the first film to win the Filmfare Best Film Award?",
      options: [
        "a) Boot Polish",
        "b) Jagriti",
        "c) Do Bigha Zamin",
        "d) Mother India"
      ],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 9,
      question: " Which was the first Indian movie nominated for Oscar?",
      options: [
        "a) Salaam Bombay",
        "b) Lagaan",
        "c) Mother India",
        "d) Mr & Mrs 55"
      ],
      correctOptionIndex: 2,
    ),
    MCQ(
      id: 10,
      question: "Which was the first Indian movie to win an Oscar?",
      options: [
        "a) Slumdog Millionaire",
        "b) Mother India",
        "c) Gandhi",
        "d) Mughal-E-Azam"
      ],
      correctOptionIndex: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trivia Launch',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: _state == 1
            ? StartScreen(
                toggle: _toggle,
              )
            : _state == 2
                ? SurveyPage(
                    mcqs: mcqs,
                    answerQuestion: _answerQuestion,
                    toggle: _toggle,
                  )
                : ResultPage(
                    toggle: _toggle,
                    map: map,
                    mcqs: mcqs,
                  ),
      ),
    );
  }
}
