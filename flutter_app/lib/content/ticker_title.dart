import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TickerTitle extends StatefulWidget {
  @override
  createState() => _TickerTitleState();
}

class _TickerTitleState extends State<TickerTitle>
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
          top: (animation.value * -MediaQuery.of(context).size.width * 0.1),
          child: Opacity(
            opacity: animation.value,
            child: Center(
              child: Container(
                child: Text(
                  'Using Timeline',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.064),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: MediaQuery.of(context).size.width * 0.24,
          left: MediaQuery.of(context).size.width * 0.06,
          right: MediaQuery.of(context).size.width * 0.06,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width:
                      animation.value * MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.only(bottom: 16.0),
                  height: 20.0,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Slider(
                    value: animation.value,
                    onChanged: (v) {
                      _controller.value = v;
                    },
                  ),
                ),
                Text(
                  '${(animation.value * 100).toInt()}%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
