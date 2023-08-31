void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura;
 
  if(diasDesdeColheita >= 30){
    isMadura= true;
  } else {
    isMadura= false;
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
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

class Fruta extends Alimento {
//propriedades -> caracteristicas do objeto
 
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

//construtor-> método especial
  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}) : super(nome, peso, cor);

  //metodo
  void estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida há $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura.");
  }

  void fazerSuco(){
    print("Você fez um ótimo suco de $nome");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor); 

  void printAlimento(){
    print("Est(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Nem precisa cozinhar!");
    }
  }
}

class Citricas extends Alimento {
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, this.diasDesdeColheita, this.nivelAzedo) : super(nome, peso, cor);
}

class Nozes extends Alimento {
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, this.diasDesdeColheita, this.porcentagemDeOleoNatural) : super(nome, peso, cor);
}