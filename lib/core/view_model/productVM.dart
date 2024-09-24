import 'package:dio/dio.dart';

import '../models/products.dart';

class ProductVM{
 Future<List<Prodect>?> getProducts()async{
    Dio d = Dio(); //يعمل ٌ
    Response<dynamic> res=await d.get("https://fakestoreapi.com/products") as Response<dynamic >;
    List<Prodect>? allProducts = res.data?.map<Prodect>((e) => Prodect.fromJson(e)).toList();
    return allProducts;
  }
} 