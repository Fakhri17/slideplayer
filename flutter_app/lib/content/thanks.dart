import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThanksScreen extends StatefulWidget {
  @override
  createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;
  Animation<double> animation2;

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

    animation2 = CurvedAnimation(
        parent: _controller, curve: Interval(0.2, 1.0, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  build(context) {
    return Stack(
      overflow: Overflow.clip,
      children: <Widget>[
        Positioned.fill(
          top: animation.value * -MediaQuery.of(context).size.width * 0.1,
          child: Center(
            child: Container(
              child: Text(
                'Thank you :)',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.064),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: MediaQuery.of(context).size.width * 0.24,
          left: MediaQuery.of(context).size.width * 0.06,
          right: MediaQuery.of(context).size.width * 0.06,
          child: Center(
            child: Opacity(
              opacity: animation2.value,
              child: Transform.translate(
                offset: Offset(
                    0.0,
                    animation2.value *
                        -MediaQuery.of(context).size.width *
                        0.04),
                child: Container(
                  child: Text(
                    'Q?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
