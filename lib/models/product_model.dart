import 'package:qrscan/models/category_model.dart';
import 'package:qrscan/models/outlet_model.dart';

class ProductModel {
  int id;
  String? name;
  String? description;
  String? price;
  String? image;
  CategoryModel category;
  OutletModel outlet;
  String? status;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProductModel({
    required this.id,
    this.name,
    this.description,
    this.price,
    this.image,
    required this.category,
    required this.outlet,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      category: CategoryModel.fromJson(json['category']),
      outlet: OutletModel.fromJson(json['outlet']),
      status: json['status'] as String?,
      createdBy: json['createdBy'] as String?,
      updatedBy: json['updatedBy'] as String?,
      createdAt: json['createdAt'] as DateTime?,
      updatedAt: json['updatedAt'] as DateTime?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'category': category,
      'outlet': outlet,
      'status': status,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
