import 'package:flutter/material.dart';

class FuturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<String> getTitle() async {
      return Future.delayed(
        Duration(seconds: 5),
        () {
          return "Los inocentes";
        },
      );
    }

    Future<int> getNumber() async {
      return Future.delayed(Duration(seconds: 3), () {
        return 999;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Future Page"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getTitle(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print("snapshot: $snapshot");
            print("connection state: ${snapshot.connectionState}");
            print("has data: ${snapshot.hasData}");
            print("has error: ${snapshot.hasError}");
            return Text("HOLA");
          },
        ),
      ),
    );
  }
}
