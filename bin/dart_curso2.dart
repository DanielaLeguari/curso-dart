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

Legumes mandioca1 = Legumes('Macaxeita', 1200, 'marrom', true);
Fruta banana1 = Fruta('Banana', 75, 'amarela', 'doce', 12);
Nozes macadamia1 = Nozes('Macadamia', 2, 'branco amarelado', 'doce', 20, 35);
Citricas limao1 = Citricas('Limão', 50, 'verde', 'azedo', 5, 9);

mandioca1.printAlimento();
banana1.printAlimento();
mandioca1.printAlimento();
limao1.printAlimento();

mandioca1.cozinhar();

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

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar) : super(nome, peso, cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Nem precisa cozinhar!");
    }
  }
  
  @override
  void assar() {
    // TODO: implement assar
  }
  
  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }
  
  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo): super(nome, peso, cor, sabor, diasDesdeColheita) ;

  void existeRefri(bool existe){
    if(existe){
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refri $nome");
    }
  }
}

class Nozes extends Fruta {

  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.porcentagemDeOleoNatural) : super(nome, peso, cor, sabor, diasDesdeColheita);
}

abstract class Bolo {

  void separarIngredientes();
  void fazerMassa();
  void assar();
}