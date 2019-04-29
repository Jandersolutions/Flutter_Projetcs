import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top:40.0,left:10.0),
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
                          color: Colors.white
                          ),
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
                        color: Colors.white
                        ),
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
                          color: Colors.white
                          ),
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
                        color: Colors.white
                        ),
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
                          color: Colors.white
                          ),
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
                        color: Colors.white
                        ),
                  ))
                ],
              ),
              PizzaImagewidget(),
            ],
          )),
    );
  }
}

class PizzaImagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.jpeg');
    Image image = Image(image: pizzaAsset,
    width: 400.0,
    height: 400.0
    );
    return Container(child: image,);
  }

}

void main() {}
