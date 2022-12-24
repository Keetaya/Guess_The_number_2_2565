// ignore_for_file: avoid_print


import 'dart:math';
enum GuessResult {
  correct,
  tooHigh,
  tooLow;
}

class Game {
  final int answer;

  int _totalGuess = 0;

  //constructor
  Game() :
        answer = Random().nextInt(100) + 1 {
    print('Enter a maximum number to random: ${answer+3}');
    print('');
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
  /*int doPlayAgain(String playAgain) {
    if (playAgain == 'N' || playAgain=='n') {
      return 0;
    } else if (playAgain == 'Y' || playAgain == 'y') {
      return 1;
    }

  }*/


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
