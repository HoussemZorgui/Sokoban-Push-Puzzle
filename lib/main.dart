import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main_game_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // Force Canvas renderer for better Flame compatibility
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sokoban Push Puzzle - Houssem Zorgui',
      home: MainGamePage(),
    );
  }
}
