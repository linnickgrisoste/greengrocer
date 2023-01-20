class ItemModel {
  String itemName;
  String imageUrl;
  String unit;
  double price;
  String description;

  ItemModel({
    required this.description,
    required this.imageUrl,
    required this.itemName,
    required this.price,
    required this.unit,
  });
}
