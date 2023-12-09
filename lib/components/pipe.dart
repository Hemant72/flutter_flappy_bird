import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flutter_flappy_bird_game/game/assets.dart';
import 'package:flutter_flappy_bird_game/game/configuration.dart';
import 'package:flutter_flappy_bird_game/game/flappy_bird_game.dart';
import 'package:flutter_flappy_bird_game/game/pipe_positon.dart';

class Pipe extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Pipe({
    required this.height,
    required this.pipePosition,
  });

  final PipePosition pipePosition;
  @override
  final double height;

  @override
  Future<void> onLoad() async {
    final pipe = await Flame.images.load(Assets.pipe);
    final pipeRotated = await Flame.images.load(Assets.pipeRotated);

    size = Vector2(50, height);

    switch (pipePosition) {
      case PipePosition.top:
        position.y = 0;
        sprite = Sprite(pipeRotated);
        break;
      case PipePosition.bottom:
        position.y = gameRef.size.y - size.y - Config.groundHeight;
        sprite = Sprite(pipe);
        break;
    }
  }
}
