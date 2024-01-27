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
            ),
            //solucion containers
            Container(
              width: 300,
              height: 90,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                width: 200,
                height: 90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                  ),
                ),
                child: Text(
                  "Challenge",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // SOLUCION WILSON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff96cbfa),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      )),
                  child: Text(
                    "Challenge",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
