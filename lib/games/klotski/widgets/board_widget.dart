import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/game_controller.dart';
import 'tile_widget.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final board = Provider.of<GameController>(context).board;

    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, crossAxisSpacing: 6, mainAxisSpacing: 6),
        itemCount: board.tiles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {
              Provider.of<GameController>(context, listen: false)
                  .moveTile(index)
            },
            child: ShiningTileWidget(tile: board.tiles[index]),
          );
        });
  }
}
