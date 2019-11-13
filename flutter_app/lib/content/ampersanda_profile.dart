import 'package:flutter/material.dart';

class AmpersandaProfile extends StatelessWidget {
  @override
  build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 32.0),
                child: Image.asset('assets/images/profile_photo.jpeg',
                    width: 200.0)),
            Text(
              'Mochamad Lucky Pradana',
              style: TextStyle(fontSize: 32.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Developer at Aleph Labs',
              style: TextStyle(fontSize: 20.0, color: Colors.grey),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 56.0, bottom: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/twitter.png',
                    width: 48.0,
                    filterQuality: FilterQuality.high,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    '@ampersanda',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'w w w',
                    style: TextStyle(fontSize: 32.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'https://ampersanda.dev',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/github.png',
                    width: 48.0,
                    filterQuality: FilterQuality.high,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    '@ampersanda',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
