import 'package:flutter/material.dart';
import 'package:qr_scanner/src/pages/mapas_page.dart';
import 'package:qr_scanner/src/pages/direcoes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Qr-Scanner'), actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever))
        ]),
        body: _callPage(currentIndex),
        bottomNavigationBar: _criarBottonNaviagation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.filter_center_focus),
        ));
  }

  Widget _criarBottonNaviagation() {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Primeiro'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_1),
          title: Text('Segundo'),
        ),
      ],
    );
  }

  Widget _callPage(int paginaAtual) {
    switch (paginaAtual) {
      case 0:
        return MapasPage();
      case 1:
        return DirecoesPage();

      default:
        return MapasPage();
    }
  }
}
