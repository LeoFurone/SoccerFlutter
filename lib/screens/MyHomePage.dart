import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final int _score = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.poll,
                      size: 40,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                        "Você fez ${_score.toString()} gols nas peladas!"),
                    subtitle: Text(
                      'Eai, bora aumentar esse número?',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('REGISTRAR JOGO'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      FlatButton(
                        child: const Text('JOGOS RECENTES'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

}

