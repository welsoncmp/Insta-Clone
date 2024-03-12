import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List<Map<String, String>> stories = [
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/01.jpeg',
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/04.jpeg',
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/02.jpeg',
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/05.jpeg',
    },
    {
      'nome': 'welsoncmp',
      'imagem': 'assets/images/03.jpeg',
    },
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
              padding: const EdgeInsets.only(bottom: 30),
              child: Stack(children: [
                Center(
                  widthFactor: 1.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(story['imagem']!, fit: BoxFit.cover, width: 88, height: 88,),
                  ),
                ),
                if (index != 0) Center(child: Image.asset('assets/icons/historias-do-instagram.png', fit: BoxFit.cover, width: 100, height: 100,)),
              ],),
            ),

            Container(
              child: index == 0 ? Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 70.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/icons/botao-adicionar.png', width: 18.0),
                  ),
                ),
              )
                  : null,
            ),

            Positioned(
              bottom: 12,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: index == 0 ? const Padding(
                    padding: EdgeInsets.only(left: 05.0),
                    child: Text('Seu story', style: TextStyle(fontSize: 10)),
                  ) : Text(story['nome']!, style: const TextStyle(fontSize: 10)),
                ),
            ),

          ],
        );
      },
    );
  }
}
