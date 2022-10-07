import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: const Color(0xFF03a9f4),
        accentColor: const Color(0xFF03a9f4),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNota = TextEditingController();
  TextEditingController sNota = TextEditingController();
  String media = "";
  String situacao = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Aplicativo Média'),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.person_pin,
                color: const Color(0xFF1064e3), size: 75.0),
            new Text(
              "Primeira Nota:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF1d13f4),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: pNota,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFf01212),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segunda Nota:",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFF0c2de6),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNota,
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFee0606),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Média:",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF1111f4),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    media,
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFFf41111),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Situação:",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF1233ec),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    situacao,
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFFec0808),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                  )
                ]),
            new RaisedButton(
                key: null,
                onPressed: buttonPressed,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Calcular",
                  style: new TextStyle(
                      fontSize: 25.0,
                      color: const Color(0xFF0c0cec),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ))
          ]),
    );
  }

  void buttonPressed() {
    double p1, p2, me;
    p1 = double.parse(pNota.text);
    p2 = double.parse(sNota.text);
    me = (p1 + p2) / 2;
    setState(() {
      media = me.toStringAsFixed(2);
      if (me >= 7) {
        situacao = "Aluno aprovado";
      } else {
        situacao = "Aluno reprovado";
      }
    });
  }
}
