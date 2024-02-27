import 'package:flutter/material.dart';
import 'package:insta_clone/Views/Create.dart';
import 'package:insta_clone/Views/Feed.dart';
import 'package:insta_clone/Views/Profile.dart';
import 'package:insta_clone/Views/Search.dart';
import 'package:insta_clone/Views/Stories.dart';
import 'package:insta_clone/Views/Videos.dart';

void main() {
  runApp(
      const MaterialApp(
        home: Inicio(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _paginaAtual = 1;
  final List _telas = [
    Feed(),
    Search(),
    Create(),
    Videos(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/icons/instagram.png', width: 100,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/icons/coracao.png',width: 25.0),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset('assets/icons/mensagem.png',width: 20.0),
          ),
        ],
      ),
      body: _paginaAtual != 0 ? _telas[_paginaAtual] :
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Stories(),
            ),
            _telas[_paginaAtual]
          ],
        )
      ),

        backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _paginaAtual,
            onTap: (index) {
              setState(() {
                _paginaAtual = index;
              });
            },
            
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/icons/casa.png',width: 25.0,), label: '',),
              BottomNavigationBarItem(icon: Image.asset('assets/icons/procurar.png',width: 25.0), label: ''),
              BottomNavigationBarItem(icon: Image.asset('assets/icons/postagem-no-instagram.png',width: 25.0), label: ''),
              BottomNavigationBarItem(icon: Image.asset('assets/icons/video.png',width: 25.0), label: ''),
              BottomNavigationBarItem(icon: Image.asset('assets/icons/perfil.png',width: 25.0), label: ''),
            ]
        ),
      )
    );
  }
}