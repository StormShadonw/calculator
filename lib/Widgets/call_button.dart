import 'package:flutter/material.dart';

class CalButton extends StatelessWidget {
  var child;
  CalButton({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(child),
      ),
    );
  }
}
