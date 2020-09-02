import 'package:flutter/material.dart';

class Vetor extends StatelessWidget {
  final vetorX;
  final vetorY;
  final vetorZ;
  Vetor(this.vetorX, this.vetorY, this.vetorZ);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 70,
            height: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: vetorX,
              validator: (String value) {
                return value.isEmpty ? 'Obrigatorio' : null;
              },
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text("X,", style: TextStyle(fontSize: 30)),
          Container(
            width: 70,
            height: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: vetorY,
              validator: (String value) {
                return value.isEmpty ? 'Obrigatorio' : null;
              },
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text("Y,", style: TextStyle(fontSize: 30)),
          Container(
            width: 70,
            height: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: vetorZ,
              validator: (String value) {
                return value.isEmpty ? 'Obrigatorio' : null;
              },
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Text("Z", style: TextStyle(fontSize: 30)),
        ],
      )),
    );
  }
}
