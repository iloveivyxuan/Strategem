import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/game_controller.dart';
import 'tile_widget.dart';

class GoalWidget extends StatelessWidget {
  const GoalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final goal = Provider.of<GameController>(context).goal;

    return AspectRatio(
      aspectRatio: 1,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0),
          itemCount: goal.goalTiles.length,
          itemBuilder: (context, index) {
            return TileWidget(tile: goal.goalTiles[index]);
          }),
    );
  }
}
