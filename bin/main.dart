import 'dart:io';

main(List<String> arguments) {
  String numero = "";//"2000AD-2012AD"
  int eqValor1 = 1;
  int eqValor2 = 1;

  int anio1 = 0;
  int anio2 = 0;
  int unidad = 0;
  int decena = 0, centena = 0, miles= 0;
  String romUnidad1 = "", romDecen1 = "", romCenten1 = "", romMil1 = "";
  String romUnidad2 = "", romDecen2 = "", romCenten2 = "", romMil2 = "";
  String numRomano1 = "";
  String numRomano2 = "";
  String numRomFinal = "";
  /** 
   * 753 BC   => 1 AUC    = I
   * 1 BC     => 753 AUC  = DCCLIII
   * 1 AD     => 754 AUC  = DCCLIV
   * 2012 AD  => 2765 AUC = MMDCCLXV
   * 2000 AD  => MM
   * 
  */

  print("Ingresa la cantidad: ");
  numero = stdin.readLineSync();
  // Separamos el - de la cadena y nos devuelve una nueva cadena
  final valor = numero.split(RegExp('-'));
  final numero1 = valor[0];
  final numero2 = valor[1];

  // Se evalua en la cadena si se encuentra la expresión BC
  if(numero1.contains(RegExp('BC'))){
    // Si la condición se cumple, se separa esa expresión regular, dando como resultado una nueva
    // cadena pero convertida en entero
    anio1 = int.parse(numero1.substring(0, numero1.length-2));
    // print(anio1);
    // Se evalúa cuando el valor sea igual a 1, si es verdadero, se le asigna su equivalente
    if(anio1 == 1){
      eqValor1 = 753;

      // print(eqValor1);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor1
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
      // En dado caso de que no cumpla a condición se hace otra operación
    }else if(anio1 == 753){
      eqValor1 = 1;
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
    }else{
      eqValor1 = eqValor1 * 753;

      // print(eqValor1);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor1
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
    }
    // print(numero1.substring(0, numero1.length-2));
    // Se evalúa si la cadena contiene la expresión AD
  }else if(numero1.contains(RegExp('AD'))){
    // Se separa la expresión AD, dando como resultado un nuevo valor
    anio1 = int.parse(numero1.substring(0, numero1.length-2));
    // Se realiza la misma condición del anterior, pero tomando en cuenta la equivalencia del valor AD
    if(anio1 == 1){
      eqValor1 = 754;
      // print(eqValor1);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor1
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
    }else if(anio1 == 2012){
      eqValor1 = 2765;
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
    }else{
      eqValor1 = eqValor1 * 754;
      // print(eqValor1);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor1
      unidad = eqValor1 % 10;
      decena = (eqValor1 / 10 % 10).truncate();
      centena = (eqValor1 / 100 % 10).truncate();
      miles = (eqValor1 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad1 = "${romUnidad1}"+"IX";
      }else if(unidad >=5){
        romUnidad1 = "${romUnidad1}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad1 = "${romUnidad1}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad1 = "${romUnidad1}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen1 = "${romDecen1}"+"XC";
      }else if(decena >= 5){
        romDecen1 = "${romDecen1}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen1 = "${romDecen1}"+"X";
        }
      }else if(decena == 4){
        romDecen1 = "${romDecen1}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen1 = "${romDecen1}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten1 = "${romCenten1}"+"CM";
      }else if(centena >= 5){
        romCenten1 = "${romCenten1}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }else if(centena == 4){
        romCenten1 = "${romCenten1}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten1 = "${romCenten1}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil1 = "${romMil1}"+ "M";
      }
    }
  }

  // Se evalúa el segundo valor de la cadena si contiene BC
  if(numero2.contains(RegExp('BC'))){
    // Si la condición se cumple, se separa esa expresión regular, dando como resultado una nueva
    // cadena pero convertida en entero
    anio2 = int.parse(numero2.substring(0, numero2.length-2));
    // print(anio2);
    // Se evalúa cuando el valor sea igual a 1, si es verdadero, se le asigna su equivalente
    if(anio2 == 1){
      eqValor2 = 753;
      // print(eqValor2);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
      // En dado caso de que no cumpla a condición se hace otra operación
    }else if(anio2==753){
      eqValor2 = 1;
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
    }else{
      eqValor2 = eqValor2 * 753;
      // print(eqValor2);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
    }
    // print(numero1.substring(0, numero1.length-2));
    // Se evalúa si contiene AD
  }else if(numero2.contains(RegExp('AD'))){
    // Se separa AD de la cadena y se convierte a entero
    anio2 = int.parse(numero2.substring(0, numero2.length-2));
    // Se evalúa cuando es igual a 1
    if(anio2 == 1){
      eqValor2 = 754;
      // print(eqValor2);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());

      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
    }else if(anio2 == 2012){
      eqValor2 = 2765;
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());


      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
    }else{
      eqValor2 = eqValor2 * 754;
      // print(eqValor2);
      // Se calcula cuantas unidades, decenas, centenas y miles tiene el equivalente del valor2
      unidad = eqValor2 % 10;
      decena = (eqValor2 / 10 % 10).truncate();
      centena = (eqValor2 / 100 % 10).truncate();
      miles = (eqValor2 / 1000).truncate();
      print("unidad: " + unidad.toString());
      print("decena: " + decena.toString());
      print("centena: " + centena.toString());
      print("miles: " + miles.toString());


      // Se converte a número romano la cifra
      if(unidad == 9){
        romUnidad2 = "${romUnidad2}"+"IX";
      }else if(unidad >=5){
        romUnidad2 = "${romUnidad2}"+"V";
        for(int i = 5; i<unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }else if(unidad == 4){
        romUnidad2 = "${romUnidad2}"+ "IV";
      }else{
        for(int i = 0; i < unidad; i++){
          romUnidad2 = "${romUnidad2}"+ "I";
        }
      }

      // Se convierte las decenas
      if(decena == 9){
        romDecen2 = "${romDecen2}"+"XC";
      }else if(decena >= 5){
        romDecen2 = "${romDecen2}"+"L";
        for(int i = 5; i < decena; i++){
          romDecen2 = "${romDecen2}"+"X";
        }
      }else if(decena == 4){
        romDecen2 = "${romDecen2}"+"XL";
      }else{
        for(int i = 0; i < decena; i++){
          romDecen2 = "${romDecen2}"+ "X";
        }
      }

      // Se convierte las centenas
      if(centena == 9){
        romCenten2 = "${romCenten2}"+"CM";
      }else if(centena >= 5){
        romCenten2 = "${romCenten2}"+"D";
        for(int i = 5; i < centena;i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }else if(centena == 4){
        romCenten2 = "${romCenten2}"+"CD";
      }else{
        for(int i = 0; i < centena; i++){
          romCenten2 = "${romCenten2}"+"C";
        }
      }

      // Se convierte los miles
      for(int i = 0; i < miles; i++){
        romMil2 = "${romMil2}"+ "M";
      }
    }
  }
  // print(numero1);
  // Formamos el valor romano del numero 1 y del número 2
  numRomano1 = romMil1 + romCenten1 + romDecen1 + romUnidad1;
  numRomano2 = romMil2 + romCenten2 + romDecen2 + romUnidad2;

  // Unimos los dos números romanos
  numRomFinal = numRomano1 + numRomano2;
  
  print("Cantidad de caracteres resultante: ${numRomFinal.length}");
}
