import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home Teste Dio API"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String response = '';
  Dio dio = new Dio();

  TextEditingController ipController = TextEditingController();
  TextEditingController urlController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    ipController.text = 'http://192.168.1.103:3007';
    urlController.text = 'fb/semnulos';
    super.initState();
  }

  void executarGet() {
    dio
        .get("${ipController.text}/${urlController.text}")
        .then((value) {
      //print(value.data.toString());
      setState(() {
        response = value.data.toString();
      });
      print(response);
    }).catchError((e) {
      print(e.toString());
      setState(() {
        response = e.toString();
      });
      print(response);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('HOME PAGE DO PROJETO'),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: ipController,
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: urlController,
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              onPressed: executarGet,
              child: Text('Testar Conexão'),
            ),
            SizedBox(height: 20.0),
            Center(
              child: response != null ? Text(response) : Text('Sem informação'),
            ),
          ],
        ),
      ),
    );
  }
}
