


import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Google Maps App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Center(child: Text('Welcome to my Google Maps App')),
          SizedBox(height: 10,),
          Center(child: Text('This is the learning branch')),

        ],
      ),

    );
  }
}
