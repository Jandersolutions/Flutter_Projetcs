import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 20.0, left: 10.0),
          color: Colors.deepOrangeAccent,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Marguerita',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Tomato,Basil,Mozzarella',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Marinara',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Tomato,Garlic',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Portuguesa',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Tomato,Egg,Mozzarella,Bacon',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ))
                ],
              ),
              PizzaImagewidget(),
              OrderButton(),
            ],
          )),
    );
  }
}

class PizzaImagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.jpeg');
    Image image = Image(image: pizzaAsset, width: 300.0, height: 300.0);
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text('Finalizar pedido!'),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Pedido Completo"),
      content: Text("Obrigado pelo seu pedido"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert);
  }
}