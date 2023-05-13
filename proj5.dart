import 'package:flutter/material.dart';

void main(){
  runApp(const MikeOHearnApp());
}
class MikeOHearnApp extends StatefulWidget {
  const MikeOHearnApp({Key? key}) : super(key: key);

  @override
  State<MikeOHearnApp> createState() => _MikeOHearnAppState();
}

class _MikeOHearnAppState extends State<MikeOHearnApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:first_page() ,
    );
  }
}
class first_page extends StatelessWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("IAM Psychotic"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network("https://www.forbesindia.com/media/images/2022/Jul/img_190835_3081359jpg_r_1.c034b133546.original_bg.jpg").image,
            fit: BoxFit.cover,

          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const second_page()));
            },
            child: const Text("Sir you are under arrest \n for Human Trafficking"),
          ),
        ),

      ),
    );
  }
}
class second_page extends StatelessWidget {
  const second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Real(Stab me)"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network("https://i.redd.it/mln3oq1if5i91.jpg").image,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=> const first_page()));
            },
            child: const Text("Sorry! I don't have \n any change on me rn\n (the voices are getting louder)"),
          ),

        ),
      ),
    );
  }
}


