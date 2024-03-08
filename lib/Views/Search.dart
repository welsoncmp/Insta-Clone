import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<Map<String, String>> retorno = [
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/01.jpeg',
      'curtidas': '325',
      'comentarios': '32'
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/05.jpeg',
      'curtidas': '213',
      'comentarios': '12'
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/03.jpeg',
      'curtidas': '265',
      'comentarios': '45'
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/04.jpeg',
      'curtidas': '32',
      'comentarios': '50'
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/02.jpeg',
      'curtidas': '32',
      'comentarios': '50'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 45, left: 10, right: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Pesquisar',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floating: true,
            snap: true,
          ),

          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 0.1,
              crossAxisSpacing: 0.1,
              childAspectRatio: 0.8,
            ),
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              var post = retorno[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(post['imagem']!, fit: BoxFit.cover,),
                  ),
                );
              },
              childCount: retorno.length,
            ),
          ),
        ],
      ),
    );
  }
}
