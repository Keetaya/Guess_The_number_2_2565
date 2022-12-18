// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
void main() {

  var r = Random();
  var answer = r.nextInt(100) + 1;
  print('╔═════════════════════════════════════════════');
  print('║             GUESS THE NUMBER                ');
  print('╟─────────────────────────────────────────────');
  var isCorrect = false;
  int co = 0;
  do {
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if (input == null) {
      //print('Error, input is NULL');
      return;
    }
    var guess = int.tryParse(input);
       co+=1;
    if (guess == null) {
        co-=1;
      continue;
    }
    isCorrect = doGuess(guess, answer,co);
  } while (!isCorrect);
}
bool doGuess(int guess, int answer,int co) {
    if (guess == answer) {
      print('║ ➜ $guess is CORRECT ❤, total guesses is $co');
      print('╟─────────────────────────────────────────────');
      print('║                 THE END                     ');
      print('╚═════════════════════════════════════════════');
      return true;
    } else if (guess > answer) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟─────────────────────────────────────────────');
      return false;
    } else {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟─────────────────────────────────────────────');
      return false;
    }
}