import 'package:flutter/material.dart';

class WhatIsAnimation extends StatefulWidget {
  @override
  _WhatIsAnimationState createState() => _WhatIsAnimationState();
}

class _WhatIsAnimationState extends State<WhatIsAnimation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  build(context) {
    return Center(
      child: Text(
        'Animation',
        style: TextStyle(
            color: Colors.black87,
            fontSize: MediaQuery.of(context).size.width * 0.06),
      ),
    );
  }
}
