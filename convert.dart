import 'dart:io';

void main() {
  var firsPrint = Money();
  print(firsPrint.firstPrint());
  convert();
  print('завершена программа');
}

class Money {
  double usd = 84.8;
  double eur = 98.8;
  double rub = 1.15;
  double kzt = 0.1930;

  firstPrint() {
    return ('курс на сегодня: \nдоллар США: $usd \nЕвро: $eur \nРусский рубль: $rub \nКазахский тенге:$kzt');
  }
}

convert() {
  String buy = 'вы хотите обменять другую валюту на сом? Если да введите 1';
  String sell = 'вы хотите обменять сом на  другую валюту? Если да введите 2';

  print('$buy \n$sell');

  var a = stdin.readLineSync();
  if (a == '1') {
    print('выбурите валюту\nUSD- 1\nEUR- 2\nRUB- 3\nKZT- 4');
    func1();
  } else if (a == '2') {
    print('выбурите валюту\nUSD- 1\nEUR- 2\nRUB- 3\nKZT- 4');
    func2();
  } else
    print('error');
}

func1() {
  var a = num.parse(stdin.readLineSync()!);
  var money = Money();
  usd() {
    print('сколько долларов вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a * money.usd;
    print(b);
  }

  eur() {
    print('сколько евро вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a * money.eur;
    print(b);
  }

  rub() {
    print('сколько рублей вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a * money.rub;
    print(b);
  }

  kzt() {
    print('сколько тенге вы хотите обменять?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a * money.kzt;
    print(b);
  }

  if (a == 1) {
    usd();
    print('программа завершена');
  } else if (a == 2) {
    eur();
    print('программа завершена');
  } else if (a == 3) {
    rub();
    print('программа завершена');
  } else if (a == 4) {
    kzt();
    print('программа завершена');
  } else
    print('error');
}

func2() {
  var a = num.parse(stdin.readLineSync()!);
  var money = Money();
  usd() {
    print('сколько сом вы хотите обменять в доллары?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a / money.usd;
    print(b);
  }

  eur() {
    print('сколько сом вы хотите обменять в евро?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a / money.eur;
    print(b);
  }

  rub() {
    print('сколько сом вы хотите обменять в рубли?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a / money.rub;
    print(b);
  }

  kzt() {
    print('сколько сом вы хотите обменять в тенге?');
    var a = num.parse(stdin.readLineSync()!);
    var b = a / money.kzt;
    print(b);
  }

  if (a == 1) {
    usd();
    print('программа завершена');
  } else if (a == 2) {
    eur();
    print('программа завершена');
  } else if (a == 3) {
    rub();
    print('программа завершена');
  } else if (a == 4) {
    kzt();
    print('программа завершена');
  } else
    print('error');
}
