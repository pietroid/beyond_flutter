import 'package:beyond_flutter/components/rocket_client_component.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/jaspr_content.dart';

class Rocket extends CustomComponentBase {
  const Rocket();

  @override
  Pattern get pattern => 'Rocket';

  @override
  Component apply(String name, Map<String, String> attributes, Component? child) {
    return const RocketClientComponent();
  }
}
