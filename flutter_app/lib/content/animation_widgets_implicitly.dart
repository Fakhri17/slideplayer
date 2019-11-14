import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationWidgetsImplicitly extends StatefulWidget {
  @override
  createState() => _AnimationWidgetsImplicitlyState();
}

class _AnimationWidgetsImplicitlyState extends State<AnimationWidgetsImplicitly>
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
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: MediaQuery.of(context).size.width * 0.048),
            children: <TextSpan>[
              TextSpan(text: 'Hero ', style: TextStyle(color: Colors.red)),
              TextSpan(
                  text: 'AnimatedContainer ',
                  style: TextStyle(color: Colors.blue)),
              TextSpan(
                  text: 'AnimatedPadding ',
                  style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: 'AnimatedCrossFade ',
                  style: TextStyle(color: Colors.green)),
              TextSpan(
                  text: 'AnimatedDefaultTextStyle ',
                  style: TextStyle(color: Colors.amber)),
              TextSpan(
                  text: 'AnimatedPhysicalModel ',
                  style: TextStyle(color: Colors.pink)),
              TextSpan(
                  text: 'AnimatedOpacity ',
                  style: TextStyle(color: Colors.lightGreen)),
              TextSpan(
                  text: 'SingleTickerProviderMixin ',
                  style: TextStyle(color: Colors.teal)),
              TextSpan(
                  text: 'AnimationController ',
                  style: TextStyle(color: Colors.deepOrange)),
              TextSpan(
                  text: 'Animation ', style: TextStyle(color: Colors.blue)),
              TextSpan(
                  text: 'CurvedAnimation ',
                  style: TextStyle(color: Colors.green)),
              TextSpan(
                  text: 'CurvedTween ', style: TextStyle(color: Colors.red)),
              TextSpan(text: 'Tween ', style: TextStyle(color: Colors.cyan)),
              TextSpan(
                  text: 'Flare ',
                  style: TextStyle(color: Colors.lightGreenAccent)),
              TextSpan(
                  text: 'AnimatedBuilder ',
                  style: TextStyle(color: Colors.blueGrey)),
              TextSpan(
                  text: 'AnimatedList ', style: TextStyle(color: Colors.brown)),
              TextSpan(
                  text: 'Interval ',
                  style: TextStyle(color: Colors.deepOrangeAccent)),
              TextSpan(
                  text: 'EdgeInsetsTween ',
                  style: TextStyle(color: Colors.teal)),
              TextSpan(
                  text: 'BorderRadiusTween ',
                  style: TextStyle(color: Colors.greenAccent)),
              TextSpan(
                  text: 'ColorTween ', style: TextStyle(color: Colors.indigo)),
              TextSpan(
                  text: 'AnimatedContainer ',
                  style: TextStyle(color: Colors.purpleAccent)),
            ],
          ),
        ),
        Positioned.fill(
          child: Transform.scale(
            scale: animation.value * MediaQuery.of(context).size.width * 3,
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
          child: Opacity(
            opacity: animation.value,
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
        ),
      ],
    );
  }
}
