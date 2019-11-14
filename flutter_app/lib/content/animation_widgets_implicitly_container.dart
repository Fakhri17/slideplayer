import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationWidgetsImplicitlyContainer extends StatefulWidget {
  @override
  createState() => _AnimationWidgetsImplicitlyContainerState();
}

class _AnimationWidgetsImplicitlyContainerState
    extends State<AnimationWidgetsImplicitlyContainer>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this)
          ..addListener(() {
            print(_controller.value);
            setState(() {});
          });

    animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    _controller.forward();
  }

  @override
  build(context) {
    return Stack(
      overflow: Overflow.clip,
      children: <Widget>[
        Positioned.fill(
          child: Transform.scale(
            scale: MediaQuery.of(context).size.width * 3 -
                (animation.value * MediaQuery.of(context).size.width * 3),
            child: Center(
              child: Container(
                width: 1.0,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Container(
              child: Text(
                'Implicitly Animations',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.064),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
