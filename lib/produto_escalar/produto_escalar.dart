import 'package:flutter/material.dart';
import 'package:implementacao_matematica/model/vetor.dart';
import 'package:implementacao_matematica/model/vetoresModel.dart';

class ProdutoEscalar extends StatefulWidget {
  @override
  _ProdutoEscalarState createState() => _ProdutoEscalarState();
}

class _ProdutoEscalarState extends State<ProdutoEscalar> {
  bool _expandirResultado = false;

  final vetorX = TextEditingController();
  final vetorY = TextEditingController();
  final vetorZ = TextEditingController();

  final vetor2X = TextEditingController();
  final vetor2Y = TextEditingController();
  final vetor2Z = TextEditingController();

  final vetor3X = TextEditingController();
  final vetor3Y = TextEditingController();
  final vetor3Z = TextEditingController();

  String resultado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Produto Escalar"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Material(
                  child: Container(
                    color: Colors.grey[300],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Vetor(vetorX, vetorY, vetorZ),
                      Vetor(vetor2X, vetor2Y, vetor2Z),
                      Vetor(vetor3X, vetor3Y, vetor3Z),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50),
                        child: GestureDetector(
                          onTap: () => {
                            setState(() {
                              _expandirResultado = !_expandirResultado;
                            })
                          },
                          child: AnimatedContainer(
                            decoration: BoxDecoration(
                                color: (_expandirResultado == false
                                    ? Colors.transparent
                                    : Colors.white),
                                borderRadius: BorderRadius.circular(10.0)),
                            duration: Duration(milliseconds: 200),
                            width: 280,
                            height: (_expandirResultado == false) ? 100 : 200,
                            child: Center(child: (this.resultado != null) ? Text("O produto escalar é: \n" + resultado, textAlign: TextAlign.center, style: TextStyle(fontSize: 25),) : Text("")),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10.0),
                        height: 60,
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            "Calcular",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          onPressed: () {
                            VetorModel vetor1 = VetorModel(
                                x: double.tryParse(vetorX.text),
                                y: double.tryParse(vetorY.text),
                                z: double.tryParse(vetorZ.text));
                            VetorModel vetor2 = VetorModel(
                                x: double.tryParse(vetor2X.text),
                                y: double.tryParse(vetor2Y.text),
                                z: double.tryParse(vetor2Z.text));
                            VetorModel vetor3 = VetorModel(
                                x: double.tryParse(vetor3X.text),
                                y: double.tryParse(vetor3Y.text),
                                z: double.tryParse(vetor3Z.text));setState(() {
                              resultado = VetorModel.produtoEscalar(vetor1, vetor2, vetor3);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}