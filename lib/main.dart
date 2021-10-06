// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

Widget QuoteCard(quote){
  return Card(
    margin: EdgeInsets.all(12),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.quote,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600]
            ),
          ),
          SizedBox(height: 12),
          Text(
            quote.author,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800]
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    ),
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(quote: "Hello man",author :"Aviral"),
    Quote(quote: "How are you man?",author : "Aviral"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => QuoteCard(quote)).toList(),
        ),
      )
    );
  }
}
