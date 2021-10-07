// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
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
          children: quotes.map((quote) => Quote_Card(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
          )
          ).toList(),
        ),
      )
    );
  }
}
