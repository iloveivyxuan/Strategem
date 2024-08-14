import 'dart:math';
import 'package:flutter/material.dart';
import '../models/board.dart';
import '../models/goal.dart';
import '../models/tile.dart';

class GameController extends ChangeNotifier {
  late Board board;
  late Goal goal;

  final List<Color> colors = [
    const Color(0xFF90C7F0),
    const Color(0xFF8AD088),
    const Color(0xFFEDA7A7),
    const Color(0xFF756477),
    const Color(0xFFF5DAAB),
  ];
  final List<int> frequencies = [5, 5, 5, 5, 4];

  GameController() {
    _initializeBoard();
    _generateGoal();
  }

  void _initializeBoard() {
    List<Tile> tiles = [];
    int tileId = 1;

    for (int i = 0; i < colors.length; i++) {
      for (int j = 0; j < frequencies[i]; j++) {
        tiles.add(Tile(id: tileId++, color: colors[i], position: tiles.length));
      }
    }

    tiles.add(Tile(id: 0, color: Colors.transparent, position: 24));
    board = Board(tiles: tiles, gridSize: 5);
  }

  void _generateGoal() {
    List<Color> colorPool = [];

    for (int i = 0; i < colors.length; i++) {
      colorPool.addAll(List.generate(frequencies[i], (index) => colors[i]));
    }
    colorPool.shuffle(Random());

    List<Tile> goalTiles = [];

    for (int i = 0; i < 9; i++) {
      goalTiles.add(Tile(id: i + 1, color: colorPool[i], position: i));
    }

    goal = Goal(goalTiles: goalTiles);
  }

  void moveTile(int tileIndex) {
    board.moveTile(tileIndex);
    notifyListeners();
  }

  void resetGame() {
    _initializeBoard();
    notifyListeners();
  }
}
