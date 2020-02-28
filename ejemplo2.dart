main() {

  Animal ani = Animal (3, false, 'Raton');
  ani.respirar();
  ani.comer('pedigri');
 
  Perro per = Perro ('pelusa', 2, 4, true, 'perro');
  per.ladrar('tania');
  
  
  Comida com = Comida ('croquetas');
  com.nombrec = "croquetas";
  per.hacerPopo(com);
  
  Popo po = Popo (3.5);
  po.peso = 3.5;
  
  
}

class Animal{
  int numPatas;
  bool patas;
  String nombreespecie;
  
  Animal(this.numPatas, this.patas, this.nombreespecie);
  
  void respirar(){
    print('El animal $nombreespecie respira');
  }
  
  String comer(String croquetas){
    return "comer";
    
  }
  
}


class Perro extends Animal{
  String nombre;
  int edad;
  
  Perro (String nombre, int edad, int numPatas, bool patas, String nombreespecie) : super (numPatas, patas, nombreespecie){
  
     this.edad = edad;
     this.nombre = nombre;    
     
   } 
  
  String ladrar(String voz){
    return 'guau';
  
  }
  
  Popo hacerPopo(Comida com){
    Popo pop = Popo(.500);
    print(pop.peso);
    return pop;
    
  }
  
}

class Comida{
  String nombrec;
  
  Comida(this.nombrec);
  
  
}

class Popo{
  double peso;
  Popo(this.peso);
}
}