import 'dart:math';

import 'package:flutter/material.dart';

List<String> list = <String>['Outros','Ação', 'Aventura', 'Tiro', 'Moba'];

class AddVideo extends StatefulWidget {
  const AddVideo({Key? key}) : super(key: key);

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      )
  );
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
          body: ListView(
            children: [
              Container (
              color: Colors.black,
              height: 980,
              width: 420,
              child: Column (
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 36),
                    child: SizedBox(
                      height: 80,
                      width: 400,
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 36,
                        ),
                        textAlign: TextAlign.start,
                          'Cadastre um vídeo',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, right: 36, bottom: 30),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                          fillColor: Colors.deepPurple,
                        labelText: 'URL',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: 'http://www.exemplo.com',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, right: 36, bottom: 20),
                    child: DropdownButtonFormField<String>(
                      borderRadius: BorderRadius.circular(10),
                      dropdownColor: Colors.deepPurple,
                      value: dropdownValue,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.deepPurple,
                        prefix: Text('Gênero: '),
                        //labelText: 'CATEGORIA',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(
                          color: Colors.white,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 36),
                    child: SizedBox(
                      height: 70,
                      width: 400,
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 36,
                        ),
                        textAlign: TextAlign.start,
                        'Preview',
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 318,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),
                    child: Icon(
                        size: 100,
                        Icons.play_circle_outlined
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 318,
                      height: 48,
                      child: ElevatedButton(
                          style: style,
                          onPressed: (){},
                          child: Text('Cadastrar')
                      ),
                    ),
                  )
                ],
              )
              ),
            ]
          )
      ),
    );
  }
}
