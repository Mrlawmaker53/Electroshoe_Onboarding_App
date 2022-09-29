import 'package:electroshoe_onboarding_app/cosntant.dart';
import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({Key? key}) : super(key: key);

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isRed = true;
  int animationDuration = 500;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: animationDuration),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: RaisedButton(
          elevation: 2,
          onPressed: () {
            setState(() {
              _isRed = !_isRed; // or _isRed = false; (depends on your logic)
            });
          },
          color: colourBlack,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: coloursArray,
                ),
              ),
              height: 50,
              child: const Center(
                child: Text('Velocity', style: ktextStyle),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
