
import 'dart:convert';

import 'package:udemy/helper/api.dart';
import 'package:udemy/models/product_model.dart';
import 'package:http/http.dart'as http;
class CategoriesService{



Future<List<ProductModel>>getAllProductsCategories({required String categoryName})async{
List<dynamic>data = await Api().get(url:('https://fakestoreapi.com/products/category/$categoryName'));




List<ProductModel>productList=[];
for(int i=0;i<data.length;i++){
productList.add(ProductModel.fromJson(data[i]));

}
return productList;
}

}