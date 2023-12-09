import 'package:flame/game.dart';
import 'package:flutter_flappy_bird_game/components/background.dart';
import 'package:flutter_flappy_bird_game/components/bird.dart';
import 'package:flutter_flappy_bird_game/components/ground.dart';
import 'package:flutter_flappy_bird_game/components/pipe_group.dart';

class FlappyBirdGame extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup()
    ]);
  }
}
