import 'package:flutter/material.dart';
import 'package:flutter_cv/gradient.dart';

class Page extends StatelessWidget {
  final Widget child;

  const Page({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black12,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: GradientBackground(
            child: child,
          ),
        ),
      ),
    );
  }
}
