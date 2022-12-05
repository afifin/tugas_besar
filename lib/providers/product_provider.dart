import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:tugas_besar/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;

  List<ProductModel> search = [];

  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"));
        search.add(productModel);
        //
  }

  /////////////////////  Makanan   //////////////////////
  List<ProductModel> herbsProduList = [];

  fatchHerbsProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("makanan").get();

    value.docs.forEach(
      (element) {
        productModels(element);

        newList.add(productModel);
      },
    );
    herbsProduList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return herbsProduList;
  }

  ///////////////////    Minuman     ///////////////////
  List<ProductModel> freshProduList = [];
  fatchFreshProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("minuman").get();

    value.docs.forEach(
      (element) {
        productModels(element);

        newList.add(productModel);
      },
    );
    freshProduList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFreshProductDataList {
    return freshProduList;
  }

  ///////////////////    Camilan     ///////////////////
  List<ProductModel> rootProduList = [];
  fatchRootProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("camilan").get();

    value.docs.forEach(
      (element) {
        productModels(element);

        newList.add(productModel);
      },
    );
    rootProduList = newList;
    notifyListeners();
  }

  List<ProductModel> get getRootProductDataList {
    return rootProduList;
  }
  //////// Search return ///////////////////
   List<ProductModel> get gerAllProductSearch {
    return search;
  }
}
