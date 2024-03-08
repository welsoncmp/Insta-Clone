import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  final PageController _pageController = PageController();
  late bool _showAppBar = true;

  List<Map<String, String>> videos = [
    {
      'nome': 'Nome usuário 1',
      'imagem': 'assets/images/01.jpeg',
      'curtidas': '325',
      'comentarios': '32'
    },
    {
      'nome': 'Nome usuário 2',
      'imagem': 'assets/images/05.jpeg',
      'curtidas': '213',
      'comentarios': '12'
    },
    {
      'nome': 'Nome usuário 3',
      'imagem': 'assets/images/03.jpeg',
      'curtidas': '265',
      'comentarios': '45'
    },
    {
      'nome': 'Nome usuário 4',
      'imagem': 'assets/images/04.jpeg',
      'curtidas': '32',
      'comentarios': '50'
    },
    {
      'nome': 'Nome usuário 4',
      'imagem': 'assets/images/02.jpeg',
      'curtidas': '32',
      'comentarios': '50'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() {
              _showAppBar = true;
            });
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() {
              _showAppBar = false;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              itemCount: videos.length,
              itemBuilder: (BuildContext context, int index) {
                return reels(context, index);
              },
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                forceMaterialTransparency: true,
                elevation: 0,
                title: _showAppBar == true
                    ? const Row(
                        children: [
                          Text(
                            "Reels",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ],
                      )
                    : null,
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget reels(BuildContext context, int index) {
    var post = videos[index];
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(post['imagem']!, fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    //color: Colors.blue,
                    width: 350.0,
                    height: 230.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(post['imagem']!),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5, top: 10),
                                child: Text('welsoncmp',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5, top: 10),
                                child: Container(
                                  width: 45,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1.0,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Seguir",
                                      style:
                                          TextStyle(fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 10, color: Colors.white),),
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(post['imagem']!),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(post['imagem']!),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Curtido por welsoncmp e outras 525 pessoas', style: TextStyle(fontSize: 7, color: Colors.white70),),
                            )
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black26
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5, right: 3),
                                      child: Image.asset('assets/icons/nota.png', color: Colors.white, width: 10,),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: Text("musicax - Áudio original", style: TextStyle(fontSize: 8, color: Colors.white),),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    //color: Colors.red,
                    width: 50.0,
                    height: 230.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/coracao.png',
                              width: 25,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                '34.2 mil',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/bate-papo.png',
                              width: 25,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                '522',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/mandar.png',
                              width: 25,
                              color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                '11,5 mil',
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.0,
                                color: Colors.white,
                                style: BorderStyle.solid
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(post['imagem']!),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
