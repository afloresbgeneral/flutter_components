import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _createList(),
    );
  }

  Widget _createList() {
    print('something');
    print(menuProvider.options);

    return ListView(
      children: _createItems(),
    );
  }

  List<Widget> _createItems() {
    return [
      ListTile(title: Text('Hola Mundo')),

      ListTile(title: Text('Hola Mundo'))
    ];
  }
}
