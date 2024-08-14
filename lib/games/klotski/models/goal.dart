import 'board.dart';
import 'tile.dart';

class Goal {
  final List<Tile> goalTiles;

  Goal({required this.goalTiles});

  bool isMatched(Board board) {
    for (int i = 0; i < goalTiles.length; i++) {
      if (goalTiles[i].id != board.tiles[i].id) {
        return false;
      }
    }
    return true;
  }
}
