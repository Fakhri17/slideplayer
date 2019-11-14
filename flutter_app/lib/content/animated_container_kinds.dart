import 'package:flutter/material.dart';

class AnimatedContainerKinds extends StatefulWidget {
  @override
  createState() => _AnimatedContainerKindsState();
}

class _AnimatedContainerKindsState extends State<AnimatedContainerKinds> {
  bool state = false;

  @override
  build(context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          state = !state;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: AnimatedContainer(
                color: state ? Colors.red : Colors.blue,
                padding: EdgeInsets.all(state ? 24.0 : 0),
                duration: Duration(milliseconds: 1000),
                child: Text(
                  'AnimatedContainer',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.13,
              child: Container(
                color: Colors.greenAccent,
                child: AnimatedPadding(
                  padding: EdgeInsets.all(state ? 24.0 : 0),
                  duration: Duration(milliseconds: 1000),
                  child: Text(
                    'AnimatedPadding',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.26,
              child: Container(
                color: Colors.green,
                child: AnimatedCrossFade(
                  crossFadeState: state
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: Duration(milliseconds: 1000),
                  firstChild: Text(
                    'AnimatedCrossFade',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white),
                  ),
                  secondChild: Text(
                    'You can back',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.39,
              child: Container(
                color: Colors.yellow,
                child: AnimatedOpacity(
                    opacity: state ? 0.1 : 1.0,
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      'AnimatedOpacity',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: Colors.blueGrey),
                    )),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              left: MediaQuery.of(context).size.width / 2,
              top: state ? 100.0 : 0.0,
              child: Container(
                color: Colors.amber,
                child: Text(
                  'AnimatedPositioned',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2,
              top: MediaQuery.of(context).size.width * 0.13,
              child: Container(
                color: Colors.purple,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(seconds: 1),
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width *
                          (state ? 0.03 : 0.04),
                      color: state ? Colors.blueGrey : Colors.white),
                  child: Text(
                    'AnimatedDefaultTextStyle',
                  ),
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2,
              top: MediaQuery.of(context).size.width * 0.26,
              child: Container(
                color: Colors.green,
                child: Text('etc.',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
