import 'package:electroshoe_onboarding_app/cosntant.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

import 'aimated_button.dart';
import 'hexagon_shape.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ClipPolygon(
              sides: 6,
              borderRadius: 20.0,
              rotate: 90.0,
              boxShadows: [PolygonBoxShadow(color: colourBlue, elevation: 8.0)],
              child: Stack(children: [
                Container(
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: colourBlue)),
                        boxShadow: [
                      BoxShadow(
                        color: colourPrimaryBlue,
                      )
                    ])),
                Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: const HexagonShapeWidget()),
              ])),
        )
        ,const AnimatedButton()
      ]),
    ));
  }
}
