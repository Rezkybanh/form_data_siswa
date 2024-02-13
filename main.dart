// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controllerNIS = TextEditingController();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();

  void _kirimdata() {
    AlertDialog alertDialog = AlertDialog(
      content: SizedBox(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text("NIS : ${controllerNIS.text}"),
            Text("Password : ${controllerNama.text}"),
            Text("Moto Hidup : ${controllerAlamat.text}"),
              const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Formulir"),
        backgroundColor: Colors.teal,
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNIS,
              decoration: new InputDecoration(
                  hintText: "NIS",
                  labelText: "NIS",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                  hintText: "Nama",
                  labelText: "Nama",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextField(
              controller: controllerAlamat,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: "Alamat",
                  labelText: "Alamat",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
           Center(
           child:Center(
             child: Row(
                children: <Widget>[
              
              ElevatedButton(
                child: const Text("SIMPAN"),
                // color: Colors.red,
                onPressed: () {
                  _kirimdata();
                },
              ),
                   
                    const Padding(
                padding: EdgeInsets.all(20.0),
              ),
           
              ElevatedButton(
                child: const Text("BATAL"),
                // color: Colors.red,
                onPressed: () {
                  controllerAlamat.clear();
                  controllerNIS.clear();
                  controllerNama.clear();
                },
              )
                     ],
                   ),
           ),
           )
          ],
        ),
      ),
    );
  }
}
