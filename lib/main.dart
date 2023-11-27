import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano_key/piano_key.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Row(
          children: [
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('do.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('re.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('mi.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('fa.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('sol.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('la.mp3'));
              },
            ),
            PianoKey(
              pressedKey: () {
                player.play(AssetSource('si.mp3'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
