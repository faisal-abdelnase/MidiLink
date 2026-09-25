import 'package:flutter/material.dart';

import 'route_names.dart';

/// Minimal routing foundation. Feature `case` branches are added to
/// [generateRoute] as each screen is implemented — for now there is only
/// a placeholder for [RouteNames.root] so the app has somewhere to boot
/// into while screens are being built from the Stitch designs.
///
/// Wire it up in `MaterialApp`:
/// ```dart
/// MaterialApp(
///   initialRoute: RouteNames.root,
///   onGenerateRoute: AppRouter.generateRoute,
/// )
/// ```
class AppRouter {
  AppRouter._();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.root:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const _PlaceholderPage(),
        );
      default:
        return null;
    }
  }
}

class _PlaceholderPage extends StatelessWidget {
  const _PlaceholderPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('MediLink — core foundation ready')),
    );
  }
}
