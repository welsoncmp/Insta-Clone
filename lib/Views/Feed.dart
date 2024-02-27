import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index){
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 3,
                    child: Image.network('https://avatars.githubusercontent.com/u/42895405?v=4')
                  ),
                  ListTile(
                    title: Center(child: Text('teste01')),
                  ),
                ],
              ),
            )
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
                      child: Image.asset('assets/icons/coracao.png', width: 28),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset('assets/icons/bate-papo.png', width: 28),
                    ),
                    Image.asset('assets/icons/mandar.png', width: 28),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/icons/marca-paginas.png', width: 28),
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10,top: 10),
            child: Column(
            children: [
              Row(
                children: [
                  Text('500 Curtidas', style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                children: [
                  Text('Ver todos os 8 comentários'),
                ],
              )
            ],),
          ),



        ],
      );
    });
  }
}
