import 'package:flutter/material.dart';
import 'package:flutter_lottie/pages/delivery_page.dart';
import 'package:flutter_lottie/pages/switch_page.dart';

class AnimacoesPage extends StatefulWidget {
  const AnimacoesPage({Key? key}) : super(key: key);

  @override
  _AnimacoesPageState createState() => _AnimacoesPageState();
}

class _AnimacoesPageState extends State<AnimacoesPage> {
  open(pagina) {
    Navigator.push(context, MaterialPageRoute(builder: pagina));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Exemplos'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Exemplo: Delivery'),
            onTap: () => open((_) => DeliveryPage()),
          ),
          Divider(),
          ListTile(
            title: Text('Exemplo: Switch + Controller'),
            onTap: () => open((_) => SwitchPage()),
          ),
          Divider(),
        ],
      ),
    );
  }
}
