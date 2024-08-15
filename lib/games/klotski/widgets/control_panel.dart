import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:strategem/games/klotski/controllers/game_controller.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ControlButton(
              label: 'Reset',
              onPressed:
                  Provider.of<GameController>(context, listen: false).resetGame)
        ],
      ),
    );
  }
}

class ControlButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const ControlButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF212337),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Color(0XFF334560), width: 4)),
        ),
        child: Text(label, style: const TextStyle(color: Color(0XFFE9E9E9))));
  }
}
