import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
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
              "DEAD fr",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
