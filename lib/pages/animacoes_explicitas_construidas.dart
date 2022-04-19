import 'package:flutter/material.dart';

class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({Key? key}) : super(key: key);

  @override
  State<AnimacoesExplicitasConstruidas> createState() =>
      _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState
    extends State<AnimacoesExplicitasConstruidas>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )
      ..repeat()
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("assets/images/logo.png"),
              turns: _animationController!,
            ),
          ),
          ElevatedButton(
            child: const Text("Pressione"),
            onPressed: () {
              if (_animationStatus == AnimationStatus.dismissed) {
                //_animationController.forward();
                _animationController?.repeat();
              } else {
                _animationController?.reverse();
              }

              /*
            if( _animationController.isAnimating ){
              _animationController.stop();
            }else{
              _animationController.repeat();
            }
            */
            },
          )
        ],
      ),
    );
  }
}
