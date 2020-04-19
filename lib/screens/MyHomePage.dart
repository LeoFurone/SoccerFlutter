import 'package:aprendendoflutter/components/fundo.dart';
import 'package:aprendendoflutter/models/futebas.dart';
import 'package:aprendendoflutter/screens/FormJogo.dart';
import 'package:aprendendoflutter/screens/ListaFutebas.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  final List<Futebas> _futebasLista = List();

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          decoration: FundoTela.propriedades(),
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
                    title: _score > 0 ? Text("Você fez ${_score.toString()} gol(s) nos futebas!") : Text("Sem gols nos futebas! :(")
                    ,
                    subtitle: Text(
                      'Eai, bora aumentar esse número?',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                          child: const Text('REGISTRAR JOGO'),
                          onPressed:  () {
                            final Future<Futebas> retornoRegistro = Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return FormJogo();
                            }));
                            retornoRegistro.then(
                                    (futebasRecebido) {
                                  debugPrint('$futebasRecebido');
                                  setState(() {
                                    _score = _score + futebasRecebido.gols;
                                  });
                                  widget._futebasLista.add(futebasRecebido);
                                });
                          }
                      ),
                      FlatButton(
                        child: const Text('TODOS OS JOGOS'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListaFutebas(futebasLista: widget._futebasLista,),
                              ));
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

