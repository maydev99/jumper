import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:layout/player.dart';

class JumpGame extends FlameGame with TapDetector {
  late final PlayerComponent player;

  //late final PeepAnimation peepAnimation;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    player = PlayerComponent();

    add(player);
  }

  @override
  void onTapDown(TapDownInfo info) {
    player.jump();
  }
}
