import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

  List<Map<String, String>> stories = [
    {'nome': 'Nome usuário 1', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 2', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 3', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 4', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 5', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 6', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 7', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 8', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 9', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
    {'nome': 'Nome usuário 10', 'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var story = stories[index];
        return Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 5.0, top: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0), // Define o raio das bordas
                  child: Image.network(
                    story['imagem']!,
                    width: 90,
                    fit: BoxFit.cover, // Ajusta a imagem para preencher o espaço
                  ),
                ),
              ),


              Container(child: index != 0 ? Image.asset('assets/icons/historias-do-instagram.png', width: 100.0) : null),


              Container(
                child: index == 0
                    ? Padding(
                  padding: const EdgeInsets.only(top: 65.0, left: 60.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.5),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Image.asset('assets/icons/botao-adicionar.png', width: 30.0),
                    ),
                  ),
                )
                    : null,
              ),


              Padding(
                padding: const EdgeInsets.only(top: 104.0, left: 15.0),
                child: index == 0 ?
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text('Seu story',
                    style: TextStyle(fontSize: 10)
                  ),
                ) : Text(story['nome']!,
                    style: const TextStyle(fontSize: 10)
                ),
              ),


            ],
          ),
        );
    },);
  }
}
