import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final page;
  SlideRight({this.page})
      : super(
            pageBuilder: (context, animationone, animationtwo) => page,
            transitionsBuilder: (context, animationone, animationtwo, child) {
              var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset.zero);
              var offsetAnimation = animationone.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            });
}

class SliderLeft extends PageRouteBuilder {
  final page2;
  SliderLeft({this.page2})
      : super(
            pageBuilder: (context, animation, animationtwo) => page2,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var tween = Tween(begin: Offset.zero, end: Offset(-1, 0));
              var aniamtionoffset = animation.drive(tween);
              return SlideTransition(position: aniamtionoffset, child: child);
            });
}
