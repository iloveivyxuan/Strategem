import 'package:flutter/material.dart';
import 'package:strategem/themes/app_theme.dart';
import 'games/klotski/views/game_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: const GameView(),
    );
  }
}
