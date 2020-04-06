import 'package:flutter/material.dart';

class Products extends StatelessWidget {
 final List<String> products;

  Products(this.products)
  {
    print('ProductManager widget construct');
  }

  @override
  Widget build(BuildContext context) {

    print('ProductManager widget Build');

    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                      Image.asset('assets/33.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
