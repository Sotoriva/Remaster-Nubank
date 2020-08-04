import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Card {
  @required
  Icon icon;
  @required
  Text title;
  @required
  Text info;
  Text valor;
  String limite;
  Icons lastCredit;
  String news;
  Function onTap;

  Card({
    this.icon,
    this.info,
    this.lastCredit,
    this.limite,
    this.news,
    this.title,
    this.valor,
    this.onTap,
  });
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Card> card = [
    Card(
      icon: Icon(Icons.credit_card, color: Colors.grey[600]),
      title: Text(
        "Cartão de crédito",
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15,
        ),
      ),
      info: Text(
        "FATURA ATUAL",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
        ),
      ),
      valor: Text(
        "R\$ 0,00",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 35,
        ),
      ),
      onTap: () {},
    ),
    Card(
      icon: Icon(Icons.monetization_on, color: Colors.grey[600]),
      title: Text(
        "Conta",
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15,
        ),
      ),
      info: Text(
        "Saldo disponível",
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15,
        ),
      ),
      valor: Text(
        "R\$ 0,00",
        style: TextStyle(
          color: Colors.black,
          fontSize: 35,
        ),
      ),
      onTap: () {
        print("Teste");
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage('logo.png'),
                          color: Colors.white,
                          size: 45,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Nubank",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              itemCount: card.length,
              itemBuilder: modelCard,
            ),
          )
        ],
      ),
    );
  }

  Widget modelCard(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.white,
        ),
        height: 350,
        width: 350,
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: card[index].onTap,
                splashColor: Colors.black,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            card[index].icon,
                            SizedBox(width: 20),
                            card[index].title,
                          ],
                        ),
                        SizedBox(height: 40),
                        card[index].info,
                        card[index].valor,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: card[index].onTap,
              child: Container(
                height: 100,
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 35,
                      ),
                      Text(
                        "Dinheiro guardado no valor de \nR\$ 0,00 em DIA MES",
                        softWrap: true,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
