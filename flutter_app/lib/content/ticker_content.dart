import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TickerContent extends StatefulWidget {
  @override
  createState() => _TickerContentState();
}

class _TickerContentState extends State<TickerContent>
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
          child: Center(
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(
                      0.0,
                      (animation.value *
                          -MediaQuery.of(context).size.width *
                          0.1)),
                  child: Text('Staggered ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.064)),
                ),
                Transform.translate(
                  offset: Offset(
                      0.0,
                      (animation2.value *
                          -MediaQuery.of(context).size.width *
                          0.1)),
                  child: Text('Animation',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.064)),
                ),
              ],
            )),
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
                  width: animation2.value *
                      MediaQuery.of(context).size.width *
                      0.5,
                  margin: EdgeInsets.only(bottom: 16.0),
                  height: 20.0,
                  color: Colors.blue,
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
