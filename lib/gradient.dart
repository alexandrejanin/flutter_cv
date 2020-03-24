import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ],
        ),
      ),
    );
  }
}
