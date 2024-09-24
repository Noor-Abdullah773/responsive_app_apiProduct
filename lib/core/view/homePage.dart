import 'package:api/core/view_model/productVM.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';
 
class HomePage extends StatefulWidget {
 List<Prodect>products;
   HomePage({super.key,required this.products});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  ListView.builder(
                itemCount:widget.products.length ,
                itemBuilder: (ctx,index){
                  return Container(child: Column(children: [
                    Image.network(widget.products![index].image!),
                    ListTile(title: Text(widget.products![index].title!),
                    leading: CircleAvatar(child: Center(child: Text("${widget.products![index].price}"),),),
                    )
                  ],),);
                },
              )
    );
  }
}