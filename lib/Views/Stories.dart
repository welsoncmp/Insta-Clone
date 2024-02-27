import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

  List<Map<String, String>> stories = [
    {'nome': 'Nome usuário 1', 'imagem': 'url1'},
    {'nome': 'Nome usuário 2', 'imagem': 'url2'},
    {'nome': 'Nome usuário 3', 'imagem': 'url3'},
    {'nome': 'Nome usuário 4', 'imagem': 'url4'},
    {'nome': 'Nome usuário 5', 'imagem': 'url5'},
    {'nome': 'Nome usuário 6', 'imagem': 'url6'},
    {'nome': 'Nome usuário 7', 'imagem': 'url7'},
    {'nome': 'Nome usuário 8', 'imagem': 'url8'},
    {'nome': 'Nome usuário 9', 'imagem': 'url9'},
    {'nome': 'Nome usuário 10', 'imagem': 'url10'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var story = stories[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0), // Define o raio das bordas
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/42895405?v=4',
                  width: 90,
                  fit: BoxFit.cover, // Ajusta a imagem para preencher o espaço
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Center(
                  child: Image.asset('assets/icons/historias-do-instagram.png', width: 100.0)),
            ),

            Center(
              child: index == 0 ? Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 75.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    child: Image.asset('assets/icons/botao-adicionar.png', width: 30),
                    color: Colors.white,
                  )
                )
              ) : null
            )

          ],
        );
    },);
  }
}
