import 'package:flutter/material.dart';
import 'package:implementacao_matematica/model/vetor.dart';
import 'package:implementacao_matematica/model/vetoresModel.dart';

class Modulo extends StatefulWidget {
  @override
  _ModuloVetorState createState() => _ModuloVetorState();
}

class _ModuloVetorState extends State<Modulo> {
 bool _expandirResultado = false;

  final vetorX = TextEditingController();
  final vetorY = TextEditingController();
  final vetorZ = TextEditingController();

  String moduloVetor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Modulo de vetor"),
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
                            child: Center(child: (this.moduloVetor != null) ? Text("O modulo do vetor é: " + this.moduloVetor, style: TextStyle(fontSize: 25),) : Text("")),
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
                            VetorModel vetor1 = VetorModel(x: double.parse(vetorX.text), y: double.parse(vetorY.text), z: double.parse(vetorZ.text) );
                            setState(() {
                              moduloVetor = VetorModel.moduloVetor(vetor1);
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