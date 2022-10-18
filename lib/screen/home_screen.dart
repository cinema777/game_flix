import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Column(
          children: const [
            Text('GameFlix'),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                height: 130,
                width: 500,
                  fit: BoxFit.cover,
                  'https://i.ytimg.com/vi/r9buAwVBDhA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAMuN5v0kjlhWmm0np_qIyfiNZ5RQ'
              ),
              ElevatedButton(
                style: style,
                onPressed: (){},
                child:
                Text('Assistir Agora'),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Moba'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ElevatedButton(
                  style: style,
                  onPressed: (){},
                  child:
                  Text('Moba'),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            width: 320,
            height: 180,
          ),

        ],
      ),
    );
  }
}
