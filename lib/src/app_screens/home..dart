import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Center(
      child: Text(
        wordPair.asPascalCase,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      ),
    );
  }
}
