import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
 

  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    // final WordPair wordPair = WordPair.random();
    // return Text(
    //   wordPair.asPascalCase
    // );
    return new Scaffold(
      body: _buildSuggestions(),
    );
  }
  

  Widget _buildSuggestions(){
    return new ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext context, int item){
        if(item.isOdd){
          return Divider();
        }

        final int index = item ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair wordPair){
    return new ListTile(
      title: new Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(Icons.favorite_border),
    );
  }
}