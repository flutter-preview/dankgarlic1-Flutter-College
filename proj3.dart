import 'package:flutter/material.dart';

void main(){
  runApp(const HomelanderApp());
}
class HomelanderApp extends StatelessWidget {
  const HomelanderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: const Center(
            child: Text("I am Homelander frfr"),
          ),
        ),
        body: Center(
          child: Column(
            children: [
               Container(
                height: 180,
                width: 180,
                padding: const EdgeInsets.all(40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient:const LinearGradient(
                    colors: [Colors.amber, Colors.redAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.9),
                      spreadRadius: 4,
                      blurRadius: 12,
                      offset: const Offset(5, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Center(
                  child: Text(
                    "What is love",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
               Container(
                height: 180,
                width: 180,
                padding: const EdgeInsets.all(40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient:const LinearGradient(
                    colors: [Colors.amber, Colors.redAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.9),
                      spreadRadius: 4,
                      blurRadius: 12,
                      offset: const Offset(5, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Center(
                  child: Text(
                    "Baby don't hearn me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 180,
                width: 180,
                padding: const EdgeInsets.all(40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient:const LinearGradient(
                    colors: [Colors.amber, Colors.redAccent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.9),
                      spreadRadius: 4,
                      blurRadius: 12,
                      offset: const Offset(5, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: const Center(
                  child: Text(
                    "no more",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
