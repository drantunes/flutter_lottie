import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:lottie/lottie.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool checked = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.duration = Duration(milliseconds: 500);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  toggle() {
    (!checked) ? _controller.forward() : _controller.reverse();
    checked = !checked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opção Animada'),
        elevation: 0,
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggle,
          child: Container(
            width: 200,
            child: Lottie.asset(
              "lottie/lottie_toggle.json",
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
