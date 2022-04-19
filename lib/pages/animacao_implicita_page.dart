import 'package:flutter/material.dart';

class AnimacaoImplicitaPage extends StatefulWidget {
  const AnimacaoImplicitaPage({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicitaPage> createState() => _AnimacaoImplicitaPageState();
}

class _AnimacaoImplicitaPageState extends State<AnimacaoImplicitaPage> {
  bool _status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          padding: const EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          child: Image.asset("assets/images/logo.png"),
          curve: Curves.easeInOut,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
          child: const Text("Alterar"),
        )
      ],
    );
  }
}
