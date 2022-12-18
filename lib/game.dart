// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
enum GuessResult {
  correct,
  tooHigh,
  tooLow;
}
class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuess = 0;
  //constructor
  Game() {
    print('Answer is $answer');
  }
  GuessResult doGuess(int guess) {
    _totalGuess++;
    if (guess == answer) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }
  /*int doGuess(int guess) {
    _totalGuess++;

    if (guess == answer) {
      return 0;
    } else if (guess > answer) {
      return 1;
    } else {
      return -1;
    }
  }*/
  //getter method
  int getTotalGuess() {
    return _totalGuess;
  }
  // getter
  int get totalGuess {
    return _totalGuess;
  }
}
