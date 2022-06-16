import 'package:flutter/material.dart';
import 'qb.dart';

main() => runApp(const MaterialApp(
      home: quotes(),
    ));

class quotes extends StatefulWidget {



  const quotes({Key? key}) : super(key: key);

  @override
  State<quotes> createState() => _quotesState();
}

class _quotesState extends State<quotes> {
   List<qu> Quotes=[
     qu(text: "hello", author: "will"),
     qu(text: "mello", author: "will"),
     qu(text: "jello", author: "will")
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
        children: Quotes.map((e) =>
            Text('${e.text}-${e.author}')).toList()
        )


    );
  }
}
