class UserModel {
  int id;
  String? name;
  String? email;
  String token;

  UserModel({
    required this.id,
    this.name,
    this.email,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      name: json['name'] as String?,
      email: json['email'] as String?,
      token: json['token'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'token': token,
    };
  }
}
