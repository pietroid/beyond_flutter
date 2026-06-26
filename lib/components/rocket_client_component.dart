import 'package:beyond_flutter/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_flutter_embed/jaspr_flutter_embed.dart';

@Import.onWeb('../widgets/rocket_widget.dart', show: [#RocketWidget])
import 'rocket_client_component.imports.dart' deferred as widget;

@client
class RocketClientComponent extends StatelessComponent {
  const RocketClientComponent({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      FlutterEmbedView.deferred(
        styles: Styles(margin: .only(top: 20.px)),
        constraints: ViewConstraints(
          minWidth: cardWidth,
          minHeight: cardHeight,
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        loadLibrary: widget.loadLibrary(),
        builder: () => widget.RocketWidget(),
      ),
    ]);
  }
}
