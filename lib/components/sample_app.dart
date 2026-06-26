import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:jaspr_flutter_embed/jaspr_flutter_embed.dart';

@Import.onWeb('../widgets/counter_widget.dart', show: [#CounterWidget])
import 'sample_app.imports.dart' deferred as widget;

class SampleApp extends CustomComponentBase {
  const SampleApp();

  @override
  Pattern get pattern => 'SampleApp';

  @override
  Component apply(String name, Map<String, String> attributes, Component? child) {
    return const SampleAppView();
  }
}

class SampleAppView extends StatelessComponent {
  const SampleAppView();

  @override
  Component build(BuildContext context) {
    return FlutterEmbedView(
      widget: kIsWeb ? _buildWidget() : null,
    );
  }

  dynamic _buildWidget() {
    return widget.CounterWidget(
      count: 0,
      onChange: (value) {},
    );
  }
}
