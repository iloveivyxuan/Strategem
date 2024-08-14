import 'tile.dart';

class Board {
  final List<Tile> tiles;
  final int gridSize;
  int emptyTilePosition;

  Board({required this.tiles, required this.gridSize})
      : emptyTilePosition = tiles.indexWhere((tile) => tile.isEmpty);

  bool canMove(int tileIndex) {
    int emptyRow = emptyTilePosition ~/ gridSize;
    int emptyCol = emptyTilePosition % gridSize;
    int tileRow = tileIndex ~/ gridSize;
    int tileCol = tileIndex % gridSize;

    return (tileRow == emptyRow && (tileCol - emptyCol).abs() == 1) ||
        (tileCol == emptyCol && (tileRow - emptyRow).abs() == 1);
  }

  void moveTile(int tileIndex) {
    if (canMove(tileIndex)) {
      final temp = tiles[tileIndex];
      tiles[tileIndex] = tiles[emptyTilePosition];
      tiles[emptyTilePosition] = temp;
      emptyTilePosition = tileIndex;
    }
  }
}
