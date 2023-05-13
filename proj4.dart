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
          child: Row(
            children: [
              Container(
                height: 130,
                width: 130,
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
                    "I am",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: 130,
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
                    "Ryan Gosling",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: 130,
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
                    "fr",
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
