import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.deepPurple),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(children: <Widget>[
                      Image.asset(
                        "assets/cafe.png",
                        scale: 5,
                      ),
                      Text(
                        "Café Pilão Torrado e Moido",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                            "500g",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )),
                          Expanded(
                              child: Text(
                            "RS: 15,00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.deepPurple, fontSize: 18),
                          ))
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "O café Pilão Tradicional, de intensidade 8, disponível na embalagem almofada, tem um ponto de torra acentuado e um processo de moagem fina e uniforme, que garantem e preservam seu sabor forte e encorpado. É perfeito para o seu dia a dia.",
                            style: TextStyle(color: Colors.grey),
                          ))
                    ])))));
  }
}
