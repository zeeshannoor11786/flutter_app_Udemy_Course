import 'package:flutter/material.dart';

import 'package:flutterapp/product.dart';

import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'tester'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('ProductManager  Initstate');

    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('ProductManager  DidUpdate');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('ProductManager Build');

    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: ProductControl(_addProduct),
        ),
        Products(_products)
      ],
    );
  }
}
