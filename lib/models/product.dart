class Product{ // late sonradan eklendi
  late int id;
  late int? categoryId;
  String productName = "";
  late String quantityPerUnit;
  late double unitPrice;
  int unitsInStock = 0;

  Product(this.id, this.categoryId, this.productName, this.quantityPerUnit, this.unitPrice, this.unitsInStock);

  Product.fromJson(Map json){
    id = json["id"];
    categoryId = json["categoryId"];
    productName = json["productName"];
    quantityPerUnit = json["quantityPerUnit"];
    unitPrice = double.tryParse(json["unitPrice"].toString())!;
    unitsInStock = int.tryParse(json["unitsInStock"].toString())!;
  }

  Map toJson(){
    return {
      "id":id,
      "categoryId":categoryId,
      "productName":productName,
      "quantityPerUnit":quantityPerUnit,
      "unitPrice":unitPrice,
      "unitsInStock":unitsInStock};
  }
}