import 'package:flutter/material.dart';

main() => runApp(const MaterialApp(
      home: quotes(),
    ));

class quotes extends StatefulWidget {



  const quotes({Key? key}) : super(key: key);

  @override
  State<quotes> createState() => _quotesState();
}

class _quotesState extends State<quotes> {
   List<String> Quotes=[
     "hello",
     "yellow",
     "red",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text("AWESOME QUOTES"),
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: [...Quotes.map((e) =>
            Text(e,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1
            ),)
        )
        ],
      ),
    );
  }
}
