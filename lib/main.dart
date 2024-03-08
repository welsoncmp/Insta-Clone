import 'package:flutter/material.dart';
import 'package:insta_clone/Views/Create.dart';
import 'package:insta_clone/Views/Feed.dart';
import 'package:insta_clone/Views/Profile.dart';
import 'package:insta_clone/Views/Search.dart';
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
  int _paginaAtual = 0;
  final List _telas = [
    const Feed(),
    const Search(),
    const Create(),
    const Videos(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_paginaAtual],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
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
            BottomNavigationBarItem(icon: Container(width: 30, height: 30, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white, image: const DecorationImage(image: AssetImage('assets/images/04.jpeg'), fit: BoxFit.cover),),), label: ''),
          ]
      ),
    );
  }
}