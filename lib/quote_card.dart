import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote ;
  final Function delete;

  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text("Delete"),
            ),

            Text(quote.author,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500]
                )),

            SizedBox(height: 3),
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
            SizedBox(height:3 ),

          ],
        ),
      ),
    );
  }
}