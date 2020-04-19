import 'package:aprendendoflutter/models/futebas.dart';
import 'package:flutter/material.dart';

class CardJogos extends StatelessWidget {

  final Futebas _futebas;

  CardJogos(this._futebas);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 8),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('Gols: ' + _futebas.gols.toString()),
              subtitle: Text(
                'Data: ' + _futebas.data.replaceAll(' ', '/'), style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

