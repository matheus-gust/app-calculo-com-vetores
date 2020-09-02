import 'package:flutter/material.dart';
import 'package:implementacao_matematica/angulo_vetores/angulo_vetores.dart';
import 'package:implementacao_matematica/modulo/modulo.dart';
import 'package:implementacao_matematica/multiplicacao_vetores/multiplicacao_vetores.dart';
import 'package:implementacao_matematica/produto_escalar/produto_escalar.dart';
import 'package:implementacao_matematica/produto_misto/produto_misto.dart';
import 'package:implementacao_matematica/produto_vetorial/produto_vetorial.dart';
import 'package:implementacao_matematica/soma_vetores/soma_vetores.dart';
import 'package:implementacao_matematica/subtracao_vetores/subtracao_vetores.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Operações com vetores"),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _itemMenu(context, "Soma", Colors.blue, SomaVetores()),
                    _itemMenu(context, "Subtração", Colors.red, SubtracaoVetores())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _itemMenu(context, "Multiplicação por escalar", Colors.pink, MultiplicacaoVetores()),
                    _itemMenu(context, "Produto escalar", Colors.green, ProdutoEscalar())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _itemMenu(context, "Produto Vetorial", Colors.pinkAccent, ProdutoVetorial()),
                    _itemMenu(context, "Produto misto", Colors.orange, ProdutoMisto())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _itemMenu(context, "Módulo", Colors.redAccent, Modulo()),
                    _itemMenu(context, "Ângulo entre vetores", Colors.purple, AnguloVetores())
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget _itemMenu(BuildContext context, String tipo, Color cor, Widget widgetCalculo) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Material(
      color: cor,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => widgetCalculo));
            },
            child: Container(
          height: 170,
          width: 170,
          alignment: Alignment.center,
          child: Text(tipo, style: TextStyle(color: Colors.white, fontSize: 25), textAlign: TextAlign.center,),
        ),
      ),
    ),
  );
}
