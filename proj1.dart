import 'package:flutter/material.dart';
void main(){
  runApp(batman());
}
class batman extends StatelessWidget {
  const batman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("The Rizzler"),
          )
        ),
        body: const Center(
          
          child: Text(
            "I am vengeance"
          ),
        ),
      ),
    );
  }
}