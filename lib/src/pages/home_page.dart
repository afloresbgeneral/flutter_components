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
    // menuProvider.loadData();

    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _createItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(
          Icons.account_circle,
          color: Colors.blue,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
