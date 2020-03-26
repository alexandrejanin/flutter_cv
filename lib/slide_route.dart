import 'package:flutter/widgets.dart';

class SlideRoute extends PageRoute<void> {
  SlideRoute({
    @required this.builder,
    this.duration = const Duration(milliseconds: 350),
    this.curve = Curves.linear,
    RouteSettings settings,
  })  : assert(builder != null),
        super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;
  final Duration duration;
  final Curve curve;

  @override
  bool get opaque => false;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => duration;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return SlideTransition(
      position: Tween(
        begin: Offset(0, 1),
        end: Offset(0, 0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: curve,
      )),
      child: builder(context),
    );
  }
}
