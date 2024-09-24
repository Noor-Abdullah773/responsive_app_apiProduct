import 'package:api/core/view/homePage.dart';
import 'package:api/core/view/screens/tabletScreen.dart';
import 'package:flutter/material.dart';

import '../../view_model/productVM.dart';

class ResponsiveScreen extends StatefulWidget {
   ResponsiveScreen({super.key});
  ProductVM pvm = ProductVM();

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  int sizeTablet=768;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder(
           future:widget.pvm.getProducts() ,
           builder: ( context,  snapshot) { 
             if(snapshot.connectionState==ConnectionState.done)
             {
              return LayoutBuilder(
                  builder: ( context,  constraints) {
                    if (constraints.maxWidth <= 768) {
                      return HomePage(products:snapshot.data!,); // Mobile View Breakpoint
                      } 
                    else 
                     return TabletScreen(products:snapshot.data!,);
                         },
                       );
             }
             else
             return Center(child: CircularProgressIndicator());
             },
          ),
    );
  }
}