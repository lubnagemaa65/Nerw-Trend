
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:udemy/helper/api.dart';

class AllCategoriesServices{


Future<List<dynamic>>getAllCategories() async
{
List<dynamic>data= await Api().get(url:('https://fakestoreapi.com/categories'));


return data;
}

}