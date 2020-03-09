import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (var option in options) {
      final tempWidget = ListTile(
        title: Text(option),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtiitle'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
