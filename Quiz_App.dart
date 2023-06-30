import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';


void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz Rizz',
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
      'What is Naruto\'s favorite ramen topping?',
      ['Pork belly', 'Extra noodles', 'Secret recipe chili sauce', 'Shuriken-shaped fish cakes'],
      3,
    ),
    Question(
      'In American Psycho, what is Patrick Bateman\'s favorite music genre?',
      ['Hip-hop', 'Pop', 'Classical', 'Death metal'],
      3,
    ),
    Question(
      'In Blade Runner 2049, what is the most common question?',
      ['"What\'s your favorite color?"', '"What\'s your name?"', '"Do you dream of electric sheep?"', '"What\'s the meaning of life?"'],
      2,
    ),
    Question(
      'What is Barbie\'s latest career in Barbie (2023)?',
      ['Astronaut', 'Paleontologist', 'Computer engineer', 'Professional meme creator'],
      3,
    ),
    Question(
      'Complete the lyrics from the song "What is Love" by Haddaway: "What is love? Baby don\'t ______."',
      ['hurt me', 'hearn me', 'woah woahhh aaa haaa', 'no more '],
      1,
    ),
    Question(
      'What is Rizz\'s secret talent?',
      ['Juggling flaming torches', 'Solving complex mathematical equations', 'Speaking multiple languages fluently', 'Predicting the end of the world'],
      2,
    ),
    Question(
      'What was Donald Trump\'s favorite hobby as a child?',
      ['Playing Monopoly', 'Building sandcastles', 'Firing people', 'Tweeting'],
      1,
    ),
    Question(
      'What did Diogenes famously do when he saw a wealthy man drinking water from his hands?',
      [
        'He laughed uncontrollably',
        'He offered the man a golden cup',
        'He started singing and dancing',
        'He threw away his own drinking bowl'
      ],
      3,
    ),
    Question(
      'According to Albert Camus, what is the meaning of life?',
      ['Love and happiness', 'Absurdity and revolt', 'Success and wealth', 'Power and control'],
      1,
    ),
    Question(
      'What did Sigmund Freud say about the Oedipus complex?',
      ['"It\'s just a phase"', '"It\'s a universal phenomenon"', '"It\'s a result of unresolved childhood conflicts"', '"It\'s a myth created by jealous siblings"'],
      0,
    ),
    Question(
      'What is Eminem\'s favorite type of candy?',
      ['Skittles', 'M&Ms', 'Snickers', 'Reese\'s Peanut Butter Cups'],
      1,
    ),
    Question(
      'What is the national sport of Russia?',
      ['Football', 'Ice hockey', 'Chess', 'Vodka drinking'],
      3,
    ),
    Question(
      'What do you call a person who speaks three languages? A trilingual. What do you call a person who speaks two languages? Bilingual. What do you call a person who speaks one language? An...',
      ['Islander', 'English speaker', 'American', 'American tourist'],
      3,
    ),
    Question(
      'Vincent van Gogh only sold one painting in his lifetime. What did he do for a living instead?',
      ['Potato farmer', 'Starbucks barista', 'Pizza delivery driver', 'Professional ear cutter'],
      0,
    ),
    Question(
      'According to Plato, which government system is the worst?',
      ['Democracy', 'Monarchy', 'Oligarchy', 'Bureaucracy'],
      3,
    ),
    Question(
      'What is Bjorn Ironside\'s secret talent in the Vikings series?',
      ['Yodeling', 'Synchronized swimming', 'Juggling battle axes', 'Playing the flute'],
      2,
    ),
    Question(
      'What is Kishin Lal\'s favorite hobby in Shaun the Sheep?',
      ['Watching paint dry', 'Solving crossword puzzles', 'Knitting sweaters', 'Doing stand-up comedy'],
      3,
    ),
    Question(
      'Why did China build the Great Wall?',
      ['To keep out invaders', 'To practice their masonry skills', 'To make a really long Instagram backdrop', 'To keep the cows from running away'],
      2,
    ),
    Question(
      'Why did Vincent van Gogh become an artist?',
      ['To impress a girl', 'To rebel against his parents', 'To prove that ear-less people can still paint', 'To get famous and make lots of money'],
      0,
    ),
    Question(
      'What did Plato consider as the ideal form of government?',
      ['Communism', 'Anarchy', 'Fascism', 'Philosopher-Kings'],
      3,
    ),

  ];

  void restartQuiz() {
    setState(() {
      // Reset question index and score
      currentQuestionIndex = 0;
      totalScore = 0;

      // Shuffle the questions list again
      questions.shuffle();
    });
  }



  void answerSelected(int selectedIndex) {
    setState(() {
      if (selectedIndex == questions[currentQuestionIndex].correctAnswerIndex) {
        totalScore++;
      }
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Quiz finished, show the result
        showQuizResult(totalScore);
      }
    });
  }

  void showQuizResult(int score) {
    String insult;
    String praise;

    if (score == 0) {
      insult = "Well, it seems like you've unlocked the achievement for having zero brain cells. Congratulations!";
    } else if (score <= 10) {
      insult = "You scored below average. Are you sure you didn't mistake this quiz for a nap?";
    } else if (score <= 15) {
      insult = "Congratulations on your mediocre score. You must be the life of the party!";
    } else if (score <= 19) {
      insult = "Wow, you actually did quite well. Don't forget the feeling of making your parents proud for the first time";
    } else {
      insult = "With a perfect score, you've officially crossed the threshold of sanity. Seek professional help immediately!";
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Finished'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Your score: $score/${questions.length}'),
              SizedBox(height: 20.0),
              Text(
                score == 0 ? insult : insult,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Collect your Reward!!!'),
              onPressed: () {
                launch("https://www.youtube.com/shorts/SXHMnicI6Pg");
                // Navigator.of(context).pop();
                // setState(() {
                //   currentQuestionIndex = 0;
                //   totalScore = 0;
                // });

              },
            ),
            TextButton(
              child: Text('Restart the Quiz'),
              onPressed: () {
                Navigator.of(context).pop();
                restartQuiz();
                //
                // setState(() {
                //
                //   currentQuestionIndex = 0;
                //   totalScore = 0;
                // });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz Rizz'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Question ${currentQuestionIndex + 1}/${questions.length}',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              questions[currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Pacifico'),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.0),
          Column(
            children: List.generate(
              questions[currentQuestionIndex].options.length,
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.primaries[index % Colors.primaries.length],
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    minimumSize: Size(double.infinity, 0),
                  ),
                  child: Text(
                    questions[currentQuestionIndex].options[index],
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Roboto'),
                  ),
                  onPressed: () => answerSelected(index),
                ),
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
