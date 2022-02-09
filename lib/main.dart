import 'package:flutter/material.dart';

//Map
void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> key1 = ['Profit', 'Loss', 'Tax', 'Income'];
  List<String> Value1 = ['100', '300', '500', '200'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              elevation: 2,
              child: Container(
                alignment: Alignment.center,
                child: DataTable(columns: [
                  DataColumn(label: Text('Total Price')),
                  DataColumn(label: Text('500')),
                ], rows: [
                  for (var i = 0; i < key1.length; i++)
                    DataRow(cells: [
                      DataCell(Text(key1[i])),
                      DataCell(Text(Value1[i])),
                    ])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
