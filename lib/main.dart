import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bonfire Tiled Bug',
      home: MyMap(),
    );
  }
}

class MyMap extends StatelessWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      cameraConfig: CameraConfig(moveOnlyMapArea: true),
      map: TiledWorldMap(
        'bonfire-bug.json',
        forceTileSize: const Size(16, 16),
      ),
    );
  }
}
