import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Future<String> getTitle() async {
    return Future.delayed(
      Duration(seconds: 5),
      () {
        setState(() {});
        return "Los inocentes";
      },
    );
  }

  Future<int> getNumber() async {
    return Future.delayed(Duration(seconds: 3), () {
      setState(() {});
      return 999;
    });
  }

  Future<List<String>> getProducts() async {
    return Future.delayed(
      Duration(seconds: 5),
      () {
        return ["Fresa", "Papaya", "Platano", "Manzana"];
      },
    );
  }

  int _number = 0;
  Future<void> _cargarNumero() async {
    int number = await getNumber();
    setState(() {
      _number = number;
    });
  }

  Future<List<Map<String, dynamic>>> getItems() async {
    return Future.delayed(Duration(seconds: 3), () {
      return [
        {"id": 1, "name": "zapatos"},
        {"id": 2, "name": "vestidos"},
        {"id": 3, "name": "zapatillas"},
        {"id": 4, "name": "polos"},
        {"id": 5, "name": "camisas"},
      ];
    });
  }

  String _titulo = "Cargando..";
  int? number;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTitle().then((value) {
      setState(() {
        _titulo = value;
      });
    });
    _cargarNumero();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Text(
              "Future Builder",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FutureBuilder(
            future: getItems(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                List<Map<String, dynamic>> data = snapshot.data;
                return Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(data[index]["name"]);
                    },
                  ),
                );
              }
              return CircularProgressIndicator();
            },
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Text(
              "Future Then",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: Text(_titulo)),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
            child: Text(
              "Future AWAIT",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: Text('Numero Obtenidp: $_number'))
        ],
      ),
    );
  }
}
