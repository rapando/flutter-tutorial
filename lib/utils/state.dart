import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  // adding onclick
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  // store favories
  var favorites = <WordPair>[];
  void toggleFavorite() {
    // this function will add/ remove a favourite current pair in state to the favorited list
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners(); // notify all listeners that the state has been updated
  }
}
