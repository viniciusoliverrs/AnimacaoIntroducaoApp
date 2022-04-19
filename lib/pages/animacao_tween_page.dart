import 'package:flutter/material.dart';

class AnimacaoTweenPage extends StatefulWidget {
  const AnimacaoTweenPage({Key? key}) : super(key: key);

  @override
  State<AnimacaoTweenPage> createState() => _AnimacaoTweenPageState();
}

class _AnimacaoTweenPageState extends State<AnimacaoTweenPage> {
  static final colorTween = ColorTween(begin: Colors.blue, end: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Center(
      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: 6.28),
        builder: (BuildContext context, double angulo, Widget widget){
          return Transform.rotate(
            angle: angulo,
            child: Image.asset("imagens/logo.png"),
          );
        },
      ),
      */

      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 1),
        tween: Tween<double>(begin: 50, end: 180),
        builder: (BuildContext context, double largura, Widget widget){
          return Container(
            color: Colors.green,
            width: largura,
            height: 60,
          );
        },
      ),
       */

      child: TweenAnimationBuilder<Color?>(
        duration: const Duration(seconds: 3),
        tween: colorTween,
        child: Image.asset("assets/images/estrelas.jpg"),
        builder: (BuildContext context, Color? cor, Widget? widget) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(cor!, BlendMode.overlay),
            child: widget,
          );
        },
      ),
    );
  }
}
