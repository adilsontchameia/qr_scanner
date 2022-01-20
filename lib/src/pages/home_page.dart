import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Texto'),
      ),
      bottomNavigationBar: _criarBottonNaviagation(),
    );
  }

  Widget _criarBottonNaviagation() {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {},
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Primeiro'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_1),
          title: Text('Primeiro'),
        ),
      ],
    );
  }
}
