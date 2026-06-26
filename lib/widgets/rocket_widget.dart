import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flame/game.dart';
import '../constants/theme.dart';
import 'star_background.dart';

class RocketWidget extends StatefulWidget {
  const RocketWidget();

  @override
  State<RocketWidget> createState() => _RocketWidgetState();
}

class _RocketWidgetState extends State<RocketWidget> with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _oscillateController;
  late final AnimationController _fuelController;
  late final Animation<double> _fadeOpacity;
  late final Animation<double> _oscillateOffset;
  late final Animation<double> _glowOpacity;
  late final Animation<double> _glowScale;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _fadeOpacity = CurvedAnimation(parent: _fadeController, curve: Curves.easeIn);

    _oscillateController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _fuelController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _oscillateOffset = Tween<double>(begin: -12.0, end: 12.0).animate(
      CurvedAnimation(parent: _oscillateController, curve: Curves.easeInOut),
    );

    _glowOpacity = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _fuelController, curve: Curves.easeInOut),
    );

    _glowScale = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _fuelController, curve: Curves.easeInOut),
    );

    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) _fadeController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _oscillateController.dispose();
    _fuelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Container(
            color: Colors.transparent,
            width: width,
            height: height,
            child: Center(
              child: FadeTransition(
                opacity: _fadeOpacity,
                child: AnimatedBuilder(
                  animation: _oscillateController,
                  builder: (context, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                          offset: Offset(0, _oscillateOffset.value),
                          child: SvgPicture.asset(
                            'assets/rocket.svg',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        AnimatedBuilder(
                          animation: _fuelController,
                          builder: (context, child) {
                            return Transform.translate(
                              offset: Offset(0, _oscillateOffset.value - 80),
                              child: Transform.scale(
                                scale: _glowScale.value,
                                child: Container(
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blueAccent.withValues(alpha: _glowOpacity.value),
                                        blurRadius: 30,
                                        spreadRadius: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
