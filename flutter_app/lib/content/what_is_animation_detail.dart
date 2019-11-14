import 'package:flutter/material.dart';

class WhatIsAnimationDetail extends StatefulWidget {
  @override
  _WhatIsAnimationDetailState createState() => _WhatIsAnimationDetailState();
}

class _WhatIsAnimationDetailState extends State<WhatIsAnimationDetail>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;
  Animation<double> delayedAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addListener(() {
            setState(() {});
            print(animation.value);
          });

    animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    delayedAnimation = CurvedAnimation(
        parent: _controller, curve: Interval(0.4, 1.0, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  build(context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Center(
            child: Transform.translate(
              offset: Offset(0.0, (animation.value * -48.0)),
              child: Text(
                'Animation',
                textScaleFactor: 4.0,
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 200.0,
          child: Transform.translate(
            offset: Offset(0.0, delayedAnimation.value * -24.0),
            child: Opacity(
              opacity: delayedAnimation.value,
              child: Center(
                child: Text(
                  'Animation is a method in which pictures are manipulated to appear as moving images',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 28.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
