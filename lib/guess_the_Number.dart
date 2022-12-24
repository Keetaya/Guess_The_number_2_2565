// ignore_for_file: avoid_print
import 'dart:io';
import 'package:hello_flutter/game.dart';
void main() {
  var game = Game();
  late GuessResult guessResult;

  var isPlayAgain = 0;
  //int co=0;
  var myList = <String>[];
  myList.add('Y');
  print('╔═════════════════════════════════════════════');
  print('║             GUESS THE NUMBER                ');
  print('╟─────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if (input == null) {
      //print('Error, input is NULL');
      return;
    }
    var guess = int.tryParse(input);

    //co+=1;
    if (guess == null) {
      //co-=1;
      continue;
    }

    //isCorrect = game.doGuess(guess);
    guessResult = game.doGuess(guess);
    if (guessResult == GuessResult.correct) {
      print('║ ➜ $guess is CORRECT ❤, total guesses is ${game.totalGuess}');
      print('╟─────────────────────────────────────────────');
      print('║                 THE END                     ');
      print('╚═════════════════════════════════════════════');
      print('Play again? (Y/N): N');
      print("");
      print('');
      print("You've played 1 games ");
      print('🚀 Game #1: ${game.totalGuess} guesses');
    } else if (guessResult == GuessResult.tooHigh) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟─────────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟─────────────────────────────────────────────');
    }


    /* if(isCorrect==0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses is ${game.totalGuess}');
      print('╟─────────────────────────────────────────────');
      print('║                 THE END                     ');
      print('╚═════════════════════════════════════════════');
    }else if(isCorrect ==1){
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟─────────────────────────────────────────────');
    }else{
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟─────────────────────────────────────────────');
    }*/
  } //while (isCorrect != 0);
  while (guessResult != GuessResult.correct);
}
//ss
