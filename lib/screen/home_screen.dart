// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:game_flix/data/task_inherited.dart';
import 'package:url_launcher/url_launcher.dart';

import 'add_video.dart';

class HomeScreen extends StatelessWidget {
  openUrl() async {
    const url = 'https://www.youtube.com/watch?v=r9buAwVBDhA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
        title: Container(
          alignment: AlignmentDirectional.bottomCenter,
          width: 400,
          height: 50,
          child: const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'BebasNeue',
                ),
                'GAMEFLIX'
            ),
        ),
      ),
      body: ListView(
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
                onPressed: (){
                  openUrl();
                },
                child:
                const Text('Assistir Agora'),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 35, right: 35,),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Ação'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Desenvolvimento'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Moba'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Aventura'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Tiro'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text('Corrida'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListBody(
            children: (
              TaskInherited.of(context).taskList
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
          onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddVideo()));
      }),
    );
  }
}
