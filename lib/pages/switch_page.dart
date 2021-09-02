import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:lottie/lottie.dart';

class SwitchPage extends StatefulWidget {
  SwitchPage({Key? key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opção Animada'),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Text('Animação Checkbox'),
        ),
      ),
    );
  }
}
