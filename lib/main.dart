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

Widget quotesTemplate(qu){

  return Card(
    margin: EdgeInsets.fromLTRB(20, 20 ,20, 0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(qu.text,
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          SizedBox(height: 8,),

          Text(qu.author,
            style: TextStyle(
              fontSize: 15.0,
          ),
          ),
        ],

      ),
    ),
  );

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
        children: Quotes.map((qu) => quotesTemplate(qu)).toList()
        )


    );
  }
}
