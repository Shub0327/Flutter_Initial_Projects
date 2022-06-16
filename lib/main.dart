import 'package:flutter/material.dart';
import 'qb.dart';
import 'quote_card.dart';


main() => runApp(const MaterialApp(
      home: quotes(),
    ));

class quotes extends StatefulWidget {

  const quotes({Key? key}) : super(key: key);

  @override
  State<quotes> createState() => _quotesState();
}

class _quotesState extends State<quotes> {
   List<Quote> quotes=[
     Quote(text: "hello", author: "will"),
     Quote(text: "mello", author: "will"),
     Quote(text: "jello", author: "will")
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
        children: quotes.map((quote) => QuoteCard(

            quote : quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
        }

        )).toList()
        )


    );
  }
}
