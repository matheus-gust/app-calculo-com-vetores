import 'dart:math';

class VetorModel {
  double x;
  double y;
  double z;

  VetorModel({this.x, this.y, this.z});

  static VetorModel somar(VetorModel vetor1, VetorModel vetor2, VetorModel vetor3) {
    VetorModel resultado = new VetorModel();
    resultado.x = ((vetor1.x != null) ? vetor1.x : 0.0) + ((vetor2.x != null) ? vetor2.x : 0.0) + ((vetor3.x != null) ? vetor3.x : 0.0);
    resultado.y = ((vetor1.y != null) ? vetor1.y : 0.0) + ((vetor2.y != null) ? vetor2.y : 0.0) + ((vetor3.y != null) ? vetor3.y : 0.0);
    resultado.z = ((vetor1.z != null) ? vetor1.z : 0.0) + ((vetor2.z != null) ? vetor2.z : 0.0) + ((vetor3.z != null) ? vetor3.z : 0.0);
    return resultado;
  }

  static VetorModel subtrair(VetorModel vetor1, VetorModel vetor2, VetorModel vetor3) {
    VetorModel resultado = new VetorModel();
    resultado.x = ((vetor1.x != null) ? vetor1.x : 0.0) - ((vetor2.x != null) ? vetor2.x : 0.0) - ((vetor3.x != null) ? vetor3.x : 0.0);
    resultado.y = ((vetor1.y != null) ? vetor1.y : 0.0) - ((vetor2.y != null) ? vetor2.y : 0.0) - ((vetor3.y != null) ? vetor3.y : 0.0);
    resultado.z = ((vetor1.z != null) ? vetor1.z : 0.0) - ((vetor2.z != null) ? vetor2.z : 0.0) - ((vetor3.z != null) ? vetor3.z : 0.0);
    return resultado;
  }
  

  static String produtoEscalar(VetorModel vetor1, VetorModel vetor2, VetorModel vetor3) {
    VetorModel resultado = new VetorModel();
    resultado.x = ((vetor1.x != null) ? vetor1.x : 0.0) * ((vetor2.x != null) ? vetor2.x : 0.0) * ((vetor3.x != null) ? vetor3.x : 0.0);
    resultado.y = ((vetor1.y != null) ? vetor1.y : 0.0) * ((vetor2.y != null) ? vetor2.y : 0.0) * ((vetor3.y != null) ? vetor3.y : 0.0);
    resultado.z = ((vetor1.z != null) ? vetor1.z : 0.0) * ((vetor2.z != null) ? vetor2.z : 0.0) * ((vetor3.z != null) ? vetor3.z : 0.0);
    double resultadoFinal = resultado.x + resultado.y + resultado.z;

    return resultadoFinal.toStringAsFixed(2);
  }

  static String moduloVetor(VetorModel vetor) {
    String res = sqrt(pow(vetor.x, 2) + pow(vetor.y, 2) + pow(vetor.z, 2)).toStringAsFixed(2);
    print(res);
    return res;
  }

  static List<String> multiplicacaoPorEscalar(VetorModel vetor1, VetorModel vetor2, VetorModel vetor3, double escalar) {
    String resultado1 =  (escalar * ((vetor1.x != null) ? vetor1.x : 0)).toStringAsFixed(2) +", "+ (escalar * ((vetor1.y != null) ? vetor1.y : 0)).toStringAsFixed(2) + ", "+ (escalar * ((vetor1.z != null) ? vetor1.z : 0)).toStringAsFixed(2);
    String resultado2 =  (escalar * ((vetor2.x != null) ? vetor2.x : 0)).toStringAsFixed(2) +", "+ (escalar * ((vetor2.y != null) ? vetor2.y : 0)).toStringAsFixed(2) + ", "+ (escalar * ((vetor2.z != null) ? vetor2.z : 0)).toStringAsFixed(2);
    String resultado3 =  (escalar * ((vetor3.x != null) ? vetor3.x : 0)).toStringAsFixed(2) +", "+ (escalar * ((vetor3.y != null) ? vetor3.y : 0)).toStringAsFixed(2) + ", "+ (escalar * ((vetor3.z != null) ? vetor3.z : 0)).toStringAsFixed(2);
    List<String> resultados = new List<String>();
    resultados.add(resultado1);
    resultados.add(resultado2);
    resultados.add(resultado3);
    return resultados;
  }

  static VetorModel produtoVetorial(VetorModel vetor1, VetorModel vetor2) {
    VetorModel resultado = new VetorModel();
    resultado.x = ((vetor1.y * vetor2.z) - (vetor1.z * vetor2.y));
    resultado.y = ((vetor1.z * vetor2.x) - (vetor1.x * vetor1.z));
    resultado.z = ((vetor1.x * vetor2.y) - (vetor1.y * vetor2.x));
    return resultado;
  }

  static String anguloEntreVetores(VetorModel vetor1, VetorModel vetor2) {
    VetorModel resultado = new VetorModel();
    resultado.x = ((vetor1.x != null) ? vetor1.x : 0.0) * ((vetor2.x != null) ? vetor2.x : 0.0);
    resultado.y = ((vetor1.y != null) ? vetor1.y : 0.0) * ((vetor2.y != null) ? vetor2.y : 0.0);
    resultado.z = ((vetor1.z != null) ? vetor1.z : 0.0) * ((vetor2.z != null) ? vetor2.z : 0.0);
    double resultadoFinal = resultado.x + resultado.y + resultado.z;
    print(resultadoFinal);
    double cosTeta = resultadoFinal / (double.parse(moduloVetor(vetor1)) * double.parse(moduloVetor(vetor2)));
    print(cosTeta);
    double teta = acos(cosTeta)/(pi/180);

    print(teta);
    return (!teta.isNaN) ? teta.toStringAsFixed(2) + '°' : 'inexistente';
  }

  static VetorModel produtoMisto(VetorModel vetor1, VetorModel vetor2, VetorModel vetor3) {
      VetorModel produtoVet = produtoVetorial(vetor1, vetor2);
      VetorModel resultado = new VetorModel();
      resultado.x = ((produtoVet.x != null) ? produtoVet.x : 0.0) * ((vetor3.x != null) ? vetor3.x : 0.0);
      resultado.y = ((produtoVet.y != null) ? produtoVet.y : 0.0) * ((vetor3.y != null) ? vetor3.y : 0.0);
      resultado.z = ((produtoVet.z != null) ? produtoVet.z : 0.0) * ((vetor3.z != null) ? vetor3.z : 0.0);
      return resultado;
  }
}
