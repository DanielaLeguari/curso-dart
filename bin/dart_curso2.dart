void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura;
                        //argumentos
  Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasDesdeColheita); // instancia
  Fruta fruta2 = Fruta("Uva", 40, "roxo", "doce", 35);

  print(fruta1.nome);
  print(fruta2.nome);
}

class Fruta {

//propriedades -> caracteristicas do objeto
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

//construtor-> método especial
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});
}

int funcQuantosDiasmadura( int dias){
  int diasParaMadura = 30;
  int quantosDiasFalta = diasParaMadura - dias;
  return quantosDiasFalta;
}

                                            //parametros nomeados opcionais {}
void mostrarMadura(String nome, int dias, {required String cor }) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }

  if(cor != null){
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
