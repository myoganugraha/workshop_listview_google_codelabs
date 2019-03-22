import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:workshop_codelab_listview/RandomWords.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      title: 'Codelabs Google Listview',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Membuat Listview - Flutter'
          ),
        ),
        body: Center(
          child: RandomWords()
        ),
      )
    );
  }
}