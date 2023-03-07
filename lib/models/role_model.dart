class RoleModel {
  int id;
  String? name;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  RoleModel({
    required this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json["id"],
      name: json["name"] as String?,
      description: json["description"] as String?,
      createdAt: json["created_at"] as DateTime?,
      updatedAt: json["updated_at"] as DateTime?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "created_at": createdAt,
      "updated_at": updatedAt,
    };
  }
}
