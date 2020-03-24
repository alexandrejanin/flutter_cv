import 'package:flutter/widgets.dart';

class AnyButton extends StatefulWidget {
  final Widget child;
  final AlignmentGeometry alignment;
  final HitTestBehavior behavior;
  final void Function() onTap, onTapEnd;

  const AnyButton({
    Key key,
    @required this.child,
    this.alignment = Alignment.center,
    this.onTap,
    this.onTapEnd,
    this.behavior = HitTestBehavior.opaque,
  }) : super(key: key);

  @override
  _AnyButtonState createState() => _AnyButtonState();
}

class _AnyButtonState extends State<AnyButton>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: widget.behavior,
      onTapDown: (_) async {
        _animation.forward();
      },
      onTapCancel: () {
        _animation.reverse();
      },
      onTapUp: (_) {
        _animation.forward().then((_) {
          if (widget.onTap != null) widget.onTap();
          _animation.reverse().then((_) {
            if (widget.onTapEnd != null) widget.onTapEnd();
          });
        });
      },
      child: ScaleTransition(
        alignment: widget.alignment,
        scale: Tween(begin: 1.0, end: 0.9).animate(CurvedAnimation(
          parent: _animation,
          curve: Curves.easeOutSine,
        )),
        child: widget.child,
      ),
    );
  }
}

class TextButton extends StatefulWidget {
  final String text;
  final TextStyle style;
  final void Function() onTap;

  const TextButton({
    Key key,
    @required this.text,
    this.style,
    this.onTap,
  }) : super(key: key);

  @override
  _TextButtonState createState() => _TextButtonState();
}

class _TextButtonState extends State<TextButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _controller.forward();
      },
      onTapUp: (_) {
        if (widget.onTap != null) widget.onTap();
        _controller.forward().then((value) => _controller.reverse());
      },
      onTapCancel: () {
        _controller.reverse();
      },
      child: FadeTransition(
        opacity: Tween(begin: 1.0, end: 0.75).animate(_controller),
        child: Text(
          widget.text,
          style: widget.style,
        ),
      ),
    );
  }
}
