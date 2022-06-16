import 'package:flutter/material.dart';
import 'qb.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 20 ,20, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8,),

            Text(quote.author,
              style: const TextStyle(
                fontSize: 15.0,
              ),
            ),

            SizedBox(height: 8,),

            TextButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text("Delete"),)
          ],

        ),
      ),
    );
  }
}