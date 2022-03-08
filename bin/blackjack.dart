import 'dart:convert';
import 'dart:io';
import 'dart:core';
import 'dart:math';
import 'package:collection/collection.dart';

void main(List<String> arguments){

  //making the deck
  List<String> deck = ['1','1','1','1','2','2','2','2','3','3','3','3','4','4','4','4','5','5','5','5','6','6','6','6','7','7','7','7','8','8','8','8','9','9','9','9','10','10','10','10','gosi','gosi','gosi','gosi','drottning','drottning','drottning','drottning','kongur','kongur','kongur','kongur'];
  //making an empty list to put the cards i draw in, so i don't draw the same card twice.
  List<String> drawnCards= [];
  //making the random factor, the sum so i can add it all up in the end, and the bool 'done' so i can get out of the while loop (with the if and else)
  Random r = new Random();
  int random = 0;
  var sum = 0;
  bool done = true;

  //here i draw 2 cards at random, remove them from the deck and add them to the drawncards list, then print out the cards i drew
  while(drawnCards.length != 2) {
    random = r.nextInt(deck.length);
    drawnCards.add(deck[random]);
    deck.removeAt(random);
  }
  print(drawnCards.join(' og '));


  //here you have the choice to hit or stay, the 'hit' is in a while loop so you can hit as many times as you want,
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

    //when you decide to stay, you go here, because gosi,drottning and kongur is not an int, you get sent here to remove them from the drawnCards list and a '10' get's added instead so i can sum it all up
    //this is put in a loop, so if you have many non int cards (gosi,drottning,kongur) it goes through the cardsDrawn again and again until they are all gone and a '10' has been added for each one
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

      //here i add it all together in a for loop, i go through every card in the drawnCards deck(drawnCards.length) and add each card to the 'var sum'
      else {
        for (int i = 0; i < drawnCards.length; i++) {
          sum += int.parse(drawnCards[i]);
          done = false;
        }
      }
    }


      if(sum == 21)
        {
          print(sum);
          print('BLACKJACK BABYYY');
        }

      else if(sum > 21)
        {
          print('Busted!');
        }
      else
        {
          print('You got $sum!');
        }

testing




}
