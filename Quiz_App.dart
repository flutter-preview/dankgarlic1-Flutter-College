import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCQ Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int totalScore = 0;

  List<Question> questions = [
    Question(
      'What is the capital of France?',
      ['Paris', 'London', 'Rome', 'Berlin'],
      0,
    ),
    Question(
      'Which planet is known as the Red Planet?',
      ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      0,
    ),
    // Add more questions here
  ];

  void answerSelected(int selectedIndex) {
    setState(() {
      if (selectedIndex == questions[currentQuestionIndex].correctAnswerIndex) {
        totalScore++;
      }
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Quiz finished, show the result
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Quiz Finished'),
              content: Text('Your score: $totalScore/${questions.length}'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        // Reset the quiz
        currentQuestionIndex = 0;
        totalScore = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ Quiz'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Question ${currentQuestionIndex + 1}/${questions.length}',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          Text(
            questions[currentQuestionIndex].questionText,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Column(
            children: List.generate(
              questions[currentQuestionIndex].options.length,
                  (index) => ElevatedButton(
                child: Text(questions[currentQuestionIndex].options[index]),
                onPressed: () => answerSelected(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}
