import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:layout/player.dart';

class JumpGame extends FlameGame with TapDetector {
  late final PlayerComponent player;

  @override
  Future<void>? onLoad() async{
    await super.onLoad();

    add(
      player = PlayerComponent()
        ..width = 100
        ..height = 100,
    );
  }

  @override
  void onTapDown(TapDownInfo info) {
    player.jump();
  }

}