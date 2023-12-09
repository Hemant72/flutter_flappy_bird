import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter_flappy_bird_game/components/pipe.dart';
import 'package:flutter_flappy_bird_game/game/configuration.dart';
import 'package:flutter_flappy_bird_game/game/flappy_bird_game.dart';
import 'package:flutter_flappy_bird_game/game/pipe_positon.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  PipeGroup();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;
    addAll([
      Pipe(height: 100, pipePosition: PipePosition.top),
      Pipe(height: 100, pipePosition: PipePosition.bottom),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}
