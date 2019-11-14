import 'package:flutter/material.dart';

class AnimationWidgets extends StatefulWidget {
  @override
  createState() => _AnimationWidgetsState();
}

class _AnimationWidgetsState extends State<AnimationWidgets> {
  @override
  build(context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context)
            .style
            .copyWith(fontSize: MediaQuery.of(context).size.width * 0.048),
        children: <TextSpan>[
          TextSpan(text: 'Hero ', style: TextStyle(color: Colors.red)),
          TextSpan(
              text: 'AnimatedContainer ', style: TextStyle(color: Colors.blue)),
          TextSpan(
              text: 'AnimatedPadding ', style: TextStyle(color: Colors.grey)),
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
          TextSpan(text: 'Animation ', style: TextStyle(color: Colors.blue)),
          TextSpan(
              text: 'CurvedAnimation ', style: TextStyle(color: Colors.green)),
          TextSpan(text: 'CurvedTween ', style: TextStyle(color: Colors.red)),
          TextSpan(text: 'Tween ', style: TextStyle(color: Colors.cyan)),
          TextSpan(
              text: 'Flare ', style: TextStyle(color: Colors.lightGreenAccent)),
          TextSpan(
              text: 'AnimatedBuilder ',
              style: TextStyle(color: Colors.blueGrey)),
          TextSpan(
              text: 'AnimatedList ', style: TextStyle(color: Colors.brown)),
          TextSpan(
              text: 'Interval ',
              style: TextStyle(color: Colors.deepOrangeAccent)),
          TextSpan(
              text: 'EdgeInsetsTween ', style: TextStyle(color: Colors.teal)),
          TextSpan(
              text: 'BorderRadiusTween ',
              style: TextStyle(color: Colors.greenAccent)),
          TextSpan(text: 'ColorTween ', style: TextStyle(color: Colors.indigo)),
          TextSpan(
              text: 'AnimatedContainer ',
              style: TextStyle(color: Colors.purpleAccent)),
        ],
      ),
    );
  }
}
