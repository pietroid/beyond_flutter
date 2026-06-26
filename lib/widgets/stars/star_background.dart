import 'dart:math';

import 'package:beyond_flutter/widgets/stars/star_system.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class StarBackground extends FlameGame {
  StarBackground();

  @override
  Future<void> onLoad() async {
    final world = World(
      children: [],
    );

    final starSystem = StarSystem(
      numberOfStars: 10000,
      cameraSize: size,
    );

    await addAll([
      world,
      starSystem,
    ]);

    //camera = CameraComponent(world: world);
    //camera.viewfinder.position = size / 2;
    //camera.viewfinder.zoom = 1;
  }

  @override
  void update(double dt) {}
}
