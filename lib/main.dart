import 'package:flutter/material.dart';
import "quote.dart";
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

List<Quote> quotes=[
  Quote(author:"Wail Smist",text:"It was popularised in the 1960s with the release of Letraset"),
  Quote(author:"Wail Smist",text:"It was popularised in the 1960s with the release of Letraset"),
  Quote(author:"Wail Smist",text:"It was popularised in the 1960s with the release of Letraset"),
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome Quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=> QuoteCard(
            quote:quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
        }
        )).toList(),
      ),
    );
  }
}


