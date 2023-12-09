import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flappy_bird_game/game/flappy_bird_game.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(game: game)
  );
}
