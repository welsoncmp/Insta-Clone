import 'package:flutter/material.dart';
import 'package:insta_clone/Views/Stories.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<Map<String, String>> feed = [
    {
      'nome': 'Nome usuário 1',
      'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4',
      'curtidas': '325',
      'comentarios': '32'
    },
    {
      'nome': 'Nome usuário 2',
      'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4',
      'curtidas': '213',
      'comentarios': '12'
    },
    {
      'nome': 'Nome usuário 3',
      'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4',
      'curtidas': '265',
      'comentarios': '45'
    },
    {
      'nome': 'Nome usuário 4',
      'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4',
      'curtidas': '32',
      'comentarios': '50'
    },
    {
      'nome': 'Nome usuário 5',
      'imagem': 'https://avatars.githubusercontent.com/u/42895405?v=4',
      'curtidas': '41',
      'comentarios': '10'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset('assets/icons/instagram.png', width: 100),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset('assets/icons/coracao.png', width: 25.0),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset('assets/icons/mensagem.png', width: 20.0),
              ),
            ],
            floating: true, // O AppBar ficará flutuante
            snap:
                true, // Ele irá "saltar" para a posição quando você rolar para cima
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 120,
                child: Stories(),
              ),
              postsFeed()
            ]),
          ),
        ],
      ),
    );
  }

  Widget postsFeed() {
    return ListView.builder(
        padding: const EdgeInsets.only(bottom: 0, top: 0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: feed.length,
        itemBuilder: (context, index) {
          var post = feed[index];
          return Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Card(elevation: 3, child: Image.network(post['imagem']!)),
                  Positioned(
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(post['imagem']!)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  post['nome']!,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Image.asset('assets/icons/coracao.png',
                              width: 28),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Image.asset('assets/icons/bate-papo.png',
                              width: 28),
                        ),
                        Image.asset('assets/icons/mandar.png', width: 28),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/marca-paginas.png',
                            width: 28),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '${post['curtidas']!} Curtidas',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                            'Ver todos os ${post['comentarios']!} comentários'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
