import 'dart:convert';
import 'dart:io';
import 'dart:core';
import 'dart:math';
import 'package:collection/collection.dart';

void main(List<String> arguments){

  List<String> deck = ['1','1','1','1','2','2','2','2','3','3','3','3','4','4','4','4','5','5','5','5','6','6','6','6','7','7','7','7','8','8','8','8','9','9','9','9','10','10','10','10','gosi','gosi','gosi','gosi','drottning','drottning','drottning','drottning','kongur','kongur','kongur','kongur'];
  List<String> drawnCards= [];
  Random r = new Random();
  int random = 0;
  var sum = 0;
  bool done = true;
  while(drawnCards.length != 2) {
    random = r.nextInt(deck.length);
    drawnCards.add(deck[random]);
    deck.removeAt(random);
  }
  print(drawnCards.join(' og '));



  print('Would you like to hit or stay?');
  String action = stdin.readLineSync();
  while(action.toLowerCase() != 'stay')
    {
      random = r.nextInt(deck.length);
      drawnCards.add(deck[random]);
      deck.removeAt(random);
      print(drawnCards.join(' og '));
      print('Would you like to hit or stay?');
      action = stdin.readLineSync();
    }

    while(done != false) {
      if (drawnCards.contains('gosi')) {
        drawnCards.remove('gosi');
        drawnCards.add('10');
      }

      else if (drawnCards.contains('drottning')) {
        drawnCards.remove('drottning');
        drawnCards.add('10');
      }

      else if (drawnCards.contains('kongur')) {
        drawnCards.remove('kongur');
        drawnCards.add('10');
      }

      else {
        for (int i = 0; i < drawnCards.length; i++) {
          sum += int.parse(drawnCards[i]);
          done = false;
        }
      }
    }

    print(sum);






}