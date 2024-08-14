import 'package:flutter/material.dart';

class Tile {
  final int id;
  final Color color;
  int position;

  Tile({required this.id, required this.color, required this.position});

  bool get isEmpty => id == 0;
}
