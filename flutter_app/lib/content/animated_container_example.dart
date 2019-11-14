import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool bg = false;
  bool size = false;
  bool border = false;

  @override
  build(context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: MediaQuery.of(context).size.width * 0.04,
          top: MediaQuery.of(context).size.width * 0.04,
          child: AnimatedContainer(
            width: MediaQuery.of(context).size.width * (size ? 0.4 : 0.2),
            height: MediaQuery.of(context).size.width * (size ? 0.4 : 0.2),
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                color: bg ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * (border ? 0.1 : 0.02))),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2,
          top: MediaQuery.of(context).size.width * 0.04,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Color',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'change',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02),
                        ),
                        onPressed: () {
                          setState(() {
                            bg = false;
                          });
                        },
                        color: Colors.blue,
                      ),
                      SizedBox(width: 32.0),
                      FlatButton(
                        child: Text(
                          'back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02),
                        ),
                        onPressed: () {
                          setState(() {
                            bg = true;
                          });
                        },
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Size',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.03),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'normal',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          onPressed: () {
                            setState(() {
                              size = false;
                            });
                          },
                          color: Colors.blue,
                        ),
                        SizedBox(width: 32.0),
                        FlatButton(
                          child: Text(
                            'bigger',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          onPressed: () {
                            setState(() {
                              size = true;
                            });
                          },
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Border Radius',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.03),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'normal radius',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          onPressed: () {
                            setState(() {
                              border = false;
                            });
                          },
                          color: Colors.blue,
                        ),
                        SizedBox(width: 32.0),
                        FlatButton(
                          child: Text(
                            'bigger radius',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          onPressed: () {
                            setState(() {
                              border = true;
                            });
                          },
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'animate all',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.02),
                          ),
                          onPressed: () {
                            setState(() {
                              bg = !bg;
                              size = !size;
                              border = !border;
                            });
                          },
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
