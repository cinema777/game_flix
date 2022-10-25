import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final name;
  final link;
  final section;
  final image;


  const Task({
    required this.name,
    required this.link,
    required this.section,
    required this.image,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )
    );
    
    return Column(
      children: [
        Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 35, right: 25),
            child: ElevatedButton(
              style: style,
              onPressed: (){},
              child:
              Text(section),
            ),
          ),
        ],
      ),
        SizedBox(
        width: 320,
        height: 180,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 370,
                child: Text(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color:Colors.white70,
                    fontSize: 20,
                  ),
                    '$name',
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
