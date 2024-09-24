import 'package:flutter/material.dart';

import '../../models/products.dart';

class TabletScreen extends StatefulWidget {
   List<Prodect>products;
   TabletScreen({super.key,required this.products});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder:(ctx,index){
          return  ListTile(title: Text(widget.products![index].title!),
                      leading:  Image.network(widget.products![index].image!),);
        }
    )
    );
  }
}