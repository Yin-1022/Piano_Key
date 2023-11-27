import 'package:flutter/material.dart';

class PianoKey extends StatelessWidget {
  const PianoKey({
    super.key,
    required this.pressedKey,
  });

  final VoidCallback pressedKey;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: pressedKey,
          child: Container(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
