import 'package:flutter/material.dart';

class AmpersandaProfile extends StatefulWidget {
  @override
  _AmpersandaProfileState createState() => _AmpersandaProfileState();
}

class _AmpersandaProfileState extends State<AmpersandaProfile>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> profileAnimation;
  Animation<double> nameAnimation;
  Animation<double> jobAnimation;
  Animation<double> socialAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    profileAnimation = CurveTween(curve: Curves.easeOut).animate(_controller);

    nameAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.2, 1.0, curve: Curves.easeIn)));

    jobAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.5, 1.0, curve: Curves.easeIn)));

    socialAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.5, 1.0, curve: Curves.easeIn)));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Opacity(
              opacity: profileAnimation.value,
              child: Transform.translate(
                offset: Offset(0.0, 24.0 - (profileAnimation.value * 24.0)),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 32.0),
                    child: Image.asset('assets/images/profile_photo.jpeg',
                        width: MediaQuery.of(context).size.width * 0.16)),
              ),
            ),
            Opacity(
              opacity: nameAnimation.value,
              child: Transform.translate(
                offset: Offset(0.0, 24.0 - (nameAnimation.value * 24.0)),
                child: Text(
                  'Mochamad Lucky Pradana',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.032),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Opacity(
              opacity: jobAnimation.value,
              child: Transform.translate(
                offset: Offset(0.0, 24.0 - (nameAnimation.value * 24.0)),
                child: Text(
                  'Developer at Aleph Labs',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.024,
                      color: Colors.grey),
                ),
              ),
            )
          ],
        ),
        Opacity(
          opacity: socialAnimation.value,
          child: Transform.translate(
            offset: Offset(0.0, 24.0 - (nameAnimation.value * 24.0)),
            child: Container(
              margin: EdgeInsets.only(top: 56.0, bottom: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/twitter.png',
                        width: MediaQuery.of(context).size.width * 0.032,
                        filterQuality: FilterQuality.high,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        '@ampersanda',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.016),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'w w w',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.018),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'https://ampersanda.dev',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.016),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/github.png',
                        width: MediaQuery.of(context).size.width * 0.032,
                        filterQuality: FilterQuality.high,
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        '@ampersanda',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * 0.016),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
