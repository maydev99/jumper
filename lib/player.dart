import 'package:flame/components.dart';

class PlayerComponent extends SpriteComponent with HasGameRef {
  static Vector2 gravity = Vector2(0, 600);
  Vector2 velocity = Vector2.zero();
  bool isJumping = false;
  double ground = 0.0;

  @override
  Future<void>? onLoad() async{
    await super.onLoad();
    ground = gameRef.size.y - 56;
    anchor = Anchor.center;
    position = Vector2(gameRef.size.x / 8, ground);
    sprite = await gameRef.loadSprite('peep2_3.png');
  }

  @override
  void update(double dt) {
    super.update(dt);

    position += velocity * dt - gravity * dt * dt / 2;
    velocity += gravity * dt;

    if(position.y > ground) {
      velocity = Vector2(0, 0);
      isJumping = false;
    }

  }

  void jump() {
    if(!isJumping) {
      velocity += Vector2(0, -400);
      isJumping = true;
    }

  }
}