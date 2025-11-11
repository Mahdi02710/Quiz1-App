import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'how do you feel today?',
      debugShowCheckedModeBanner: false,
      home: const QuoteApp(),
    );
  }
}

class QuoteApp extends StatefulWidget{
  const QuoteApp({super.key})
  @override
  _QuoteAppState createState() => _QuoteAppState();
    
  
  }
  
  class _QuoteAppState extends State {
    String quote = 'tap "New Quote" to motivated✨';
    Color bgcolor = Colors.white;
    final List<String> quotes =[
    '🚀 you can do it!',
    '💪 keep going',
    '🤞 belive in yourself',
    ];
    final List<Color> colors =[
      Colors.lightBlueAccent,
      Colors.lightGreenAccent,
      Colors.amberAccent,
    ];
    void newquote(){
      int i = Random().nextInt(quote.length);
      setState(() {
        quote = quotes[i];
        bgcolor = colors[i];
      });
    }
    void reset(){
      setState(() {
        quote = 'tap "New Quote" to motivated✨';
        bgcolor = Colors.white;
      });
    }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(title: const Text('how do you feel today?'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quote,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),

            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: newquote, child: const Text('New Quote')),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: reset,style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent), child: const Text('reset'))
          ],
        
        ),
      ),
    );
  }
  
  }
  


  
  
  
  
