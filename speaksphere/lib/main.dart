// import 'package:flutter/material.dart';
// import 'package:speaksphere/app/app.bottomsheets.dart';
// import 'package:speaksphere/app/app.dialogs.dart';
// import 'package:speaksphere/app/app.locator.dart';
// import 'package:speaksphere/app/app.router.dart';
// import 'package:stacked_services/stacked_services.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await setupLocator();
//   setupDialogUi();
//   setupBottomSheetUi();
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: Routes.startupView,
//       onGenerateRoute: StackedRouter().onGenerateRoute,
//       navigatorKey: StackedService.navigatorKey,
//       navigatorObservers: [
//         StackedService.routeObserver,
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

/// Flutter code sample for [FadeTransition].

void main() => runApp(const FadeTransitionExampleApp());

class FadeTransitionExampleApp extends StatelessWidget {
  const FadeTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FadeTransitionExample(),
    );
  }
}

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red,
      child: FadeTransition(
        opacity: _animation,
        child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
      ),
    );
  }
}
