import 'package:flutter/material.dart';
import 'package:futuresg7/pages/container_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Hola a todos";
  bool bIsmen = true;
  int iAge = 18;
  double dPeso = 203.5;
  String mensaje() {
    return "Saludos desde una funcion";
  }

  Future<String> mensaje2() async {
    return Future.delayed(
      Duration(seconds: 5),
      () {
        return "Hola desde un future";
      },
    );
  }

  Future getMandarina() async {
    final result = await mensaje2();
    if (mounted) {
      setState(() {
        title = result;
      });
    }
    // title = await mensaje2();
    // setState(() {});
  }

  Widget contenedor3() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }

  late Future _myFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initttttttttttt");
    //NO SE PUEDE
    // title = await mensaje2();
    //SI SE PUEDE OPCION 1
    // mensaje2().then((value) {
    //   title = value;
    //   setState(() {});
    // });

    //SI SE PUEDE OPCION 2
    _myFuture = getMandarina();
  }

  @override
  void dispose() {
    // mensaje2
    // TODO: implement dispose
    super.dispose();
  }

  // Future<void> mensaje3() async {}
  @override
  Widget build(BuildContext context) {
    print("buildddddddddd");
    //esto esta mal
    // mensaje2().then((value) {
    //   print(value);
    //   print("este es el buclkeeeeeeeeeeeeeeeeeeeeeeeee");
    //   title = value;
    //   setState(() {});
    // });
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("FUTURES"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 30),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerPage(),
                  ),
                );
              },
              child: Contenedor(),
            ),
            Contenedor(),
            Contenedor(),
          ],
        ),
      ),
    );
  }
}

class Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    );
  }
}

Widget contenedor2() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 200,
      color: Colors.red,
    ),
  );
}
