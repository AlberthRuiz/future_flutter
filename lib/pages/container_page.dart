import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Page"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //HEADER
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38.withOpacity(0.3),
                    offset: Offset(9, 9),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Text(
                "I am a header",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
            //ESTACIONAMIENDO AVIÓN
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.orange,
                  width: 8,
                ),
              ),
              child: Text(
                "H",
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.orange,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
