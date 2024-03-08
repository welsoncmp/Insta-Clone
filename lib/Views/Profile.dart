import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<Map<String, String>> feed = [
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
          const SliverAppBar(
            title: Row(
              children: [
                Text(
                  "welsoncmp",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.add_box_outlined),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
            floating: true,
            snap: true,
          ),

          SliverList(delegate: SliverChildListDelegate([
            perfil()
          ]))
        ],
      ),
    );
  }

  Widget perfil() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/04.jpeg', fit: BoxFit.cover, width: 90, height: 90,),
            ),
            const SizedBox(
              width: 90.0,
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '13',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Text('publicações'),
                ],
              ),
            ),
            const SizedBox(
              width: 90.0,
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '313',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Text('seguidores'),
                ],
              ),
            ),
            const SizedBox(
              width: 90.0,
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '411',
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Text('seguindo'),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 400.0,
                height: 150.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Welson França",
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      Text("Criador(a) de conteúdo digital",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)),
                      Text("☕ Ciêntista da Computação",
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text("📱 Esp. Em Desenvolvimento Mobile",
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text("💻 Software Developer",
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text("🚀 @marketsappoficial",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.lightBlue)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Painel profissional', style: TextStyle(fontWeight: FontWeight.w500),),
                      Text('198 contas alcançadas nos últimos 30 dias', style: TextStyle(color: Colors.black54),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40.0,
                width: 195.0,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("Editar perfil", style: TextStyle(fontWeight: FontWeight.w500),),),
              ),
              Container(
                height: 40.0,
                width: 195.0,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("Compartilhar perfil", style: TextStyle(fontWeight: FontWeight.w500),),),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom:20, left: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset('assets/icons/adicionar.png'),
                  const Text("Novo"),
                ],
              )
            ],
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(icon: Image.asset('assets/icons/grid.png', width: 20,)),
                    Tab(icon: Image.asset('assets/icons/video.png', width: 20,)),
                    Tab(icon: Image.asset('assets/icons/marcacao.png', width: 20,)),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [

                      gridView(),
                      gridView(),
                      gridView(),

                    ],
                  ),
                ),
              ],
            ),
          ),
        )


      ],
    );
  }

  Widget gridView() {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 0),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 0.1,
        crossAxisSpacing: 0.1,
        childAspectRatio: 0.811,
      ),
      itemBuilder: (BuildContext context, int index) {
        var post = feed[index];
        return Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(post['imagem']!, fit: BoxFit.cover,),
          ),
        );
      },
      itemCount: feed.length,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
