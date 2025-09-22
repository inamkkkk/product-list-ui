import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:product_list_ui/screens/product_list_screen.dart';
import 'package:product_list_ui/services/product_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 
      create: (context) => ProductService(),
      child: MaterialApp(
        title: 'Product List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductListScreen(),
      ),
    );
  }
}