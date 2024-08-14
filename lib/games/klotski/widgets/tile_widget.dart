import 'package:flutter/material.dart';
import '../models/tile.dart';

class TileWidget extends StatelessWidget {
  final Tile tile;

  const TileWidget({super.key, required this.tile});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: tile.color),
        child: Center(child: tile.isEmpty ? null : Text('${tile.id}')));
  }
}
