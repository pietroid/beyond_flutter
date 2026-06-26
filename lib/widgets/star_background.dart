import 'dart:math';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class StarBackground extends FlameGame {
  @override
  Color backgroundColor() => const Color.fromARGB(255, 0, 0, 0);

  @override
  Future<void> onLoad() async {
    await add(StarField());
  }
}

class StarField extends Component with HasGameReference<StarBackground> {
  final List<Star> _stars = [];
  final Random _random = Random();

  @override
  Future<void> onLoad() async {
    for (int i = 0; i < 100; i++) {
      _stars.add(Star.random(_random, game.size));
    }
  }

  @override
  void update(double dt) {
    for (var star in _stars) {
      star.update(dt, game.size);
    }
  }

  @override
  void render(Canvas canvas) {
    for (var star in _stars) {
      star.render(canvas);
    }
  }
}

class Star {
  Vector2 position;
  double radius;
  double opacity;
  double twinkleSpeed;
  double twinkleOffset;

  Star({
    required this.position,
    required this.radius,
    required this.opacity,
    required this.twinkleSpeed,
    required this.twinkleOffset,
  });

  factory Star.random(Random random, Vector2 size) {
    return Star(
      position: Vector2(
        random.nextDouble() * size.x,
        random.nextDouble() * size.y,
      ),
      radius: random.nextDouble() * 1.5 + 0.5,
      opacity: random.nextDouble() * 0.5 + 0.5,
      twinkleSpeed: random.nextDouble() * 2 + 1,
      twinkleOffset: random.nextDouble() * pi * 2,
    );
  }

  void update(double dt, Vector2 screenSize) {
    twinkleOffset += twinkleSpeed * dt;
    if (twinkleOffset > pi * 2) {
      twinkleOffset -= pi * 2;
    }
  }

  void render(Canvas canvas) {
    final currentOpacity = opacity * (0.5 + 0.5 * sin(twinkleOffset));
    final paint = Paint()
      ..color = Colors.white.withValues(alpha: currentOpacity);
    canvas.drawCircle(position.toOffset(), radius, paint);
  }
}
