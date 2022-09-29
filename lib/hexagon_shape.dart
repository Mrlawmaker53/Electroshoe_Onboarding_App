import 'package:electroshoe_onboarding_app/cosntant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class HexagonShapeWidget extends StatelessWidget {
  const HexagonShapeWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPolygon(
      sides: 6,
      borderRadius: 5.0,
      rotate: 90.0,
      boxShadows: [PolygonBoxShadow(color: colourBlueOp_5, elevation: 8.0)],
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
