import 'package:flutter/material.dart';

class FundoTela extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  static BoxDecoration propriedades(){
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/back.png"),
        fit: BoxFit.cover,
      ),
    );
  }


}

