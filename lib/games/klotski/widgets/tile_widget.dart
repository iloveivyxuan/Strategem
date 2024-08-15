import 'package:flutter/material.dart';
import '../models/tile.dart';

class ShiningTileWidget extends StatelessWidget {
  final Tile tile;

  const ShiningTileWidget({super.key, required this.tile});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: tile.color,
            borderRadius: BorderRadius.circular(8),
            border: tile.isEmpty
                ? null
                : Border.all(
                    color: Colors.white,
                    width: 4,
                    strokeAlign: BorderSide.strokeAlignCenter)));
  }
}

class TileWidget extends StatelessWidget {
  final Tile tile;

  const TileWidget({super.key, required this.tile});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: tile.color,
            borderRadius: BorderRadius.circular(8),
            border: tile.isEmpty
                ? null
                : Border.all(
                    color: Colors.white,
                    width: 4,
                    strokeAlign: BorderSide.strokeAlignCenter)));
  }
}
