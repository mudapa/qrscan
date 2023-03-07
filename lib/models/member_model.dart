class MemberModel {
  int id;
  String? name;
  int? age;
  int? sexId;
  DateTime? birthDate;
  String? address;
  String? phone;
  int? userId;
  int? status;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;

  MemberModel({
    required this.id,
    this.name,
    this.age,
    this.sexId,
    this.birthDate,
    this.address,
    this.phone,
    this.userId,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory MemberModel.fromJson(Map<String, dynamic> json) {
    return MemberModel(
      id: json["id"],
      name: json["name"] as String?,
      age: json["age"] as int?,
      sexId: json["sexId"] as int?,
      birthDate: json["birthDate"] as DateTime?,
      address: json["address"] as String?,
      phone: json["phone"] as String?,
      userId: json["userId"] as int?,
      status: json["status"] as int?,
      createdBy: json["createdBy"] as String?,
      updatedBy: json["updatedBy"] as String?,
      createdAt: json["createdAt"] as DateTime?,
      updatedAt: json["updatedAt"] as DateTime?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "sexId": sexId,
      "birthDate": birthDate,
      "address": address,
      "phone": phone,
      "userId": userId,
      "status": status,
      "createdBy": createdBy,
      "updatedBy": updatedBy,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
    };
  }
}
