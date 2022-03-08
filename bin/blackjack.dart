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

while(drawnCards.length != 2) {
  random = r.nextInt(deck.length);
  drawnCards.add(deck[random]);
  deck.removeAt(random);
}
print(drawnCards.join(' og '));






}