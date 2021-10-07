import 'package:flutter/material.dart';
import 'quote.dart';

class Quote_Card extends StatelessWidget {

  final Quote quote;
  final Function() delete;
  Quote_Card({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 12),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
              ),
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: Text('Delete Quote'),
            )

          ],
        ),
      ),
    );
  }
}