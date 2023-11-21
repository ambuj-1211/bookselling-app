// import 'package:flutter/material.dart';
// import 'models/books.dart';
// class BookDetailsScreen extends StatefulWidget {
//   const BookDetailsScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState {

// }


import 'package:flutter/material.dart';

import 'models/books.dart';

class BookDetailsScreen extends StatelessWidget {
  final Books book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              book.image,
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              book.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Rate: \$${book.price}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Description: ${book.description}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Delivery Charges: Rs. 100',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
