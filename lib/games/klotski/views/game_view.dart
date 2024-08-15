import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/control_panel.dart';
import '../controllers/game_controller.dart';
import '../widgets/board_widget.dart';
import '../widgets/goal_widget.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameController(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Klotski')),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Flexible(flex: 1, child: GoalWidget()),
              Padding(padding: EdgeInsets.all(10)),
              Flexible(flex: 5, child: BoardWidget()),
              ControlPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
