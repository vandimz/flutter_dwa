class UserModel {
  int id;
  String name;
  String email;
  String role;
  String token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.role,
    this.token,
  });

//constructor
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    token = json['token'];
  }

//function untuk mengubah user model ke bentuk Json => ketika data ingin dikirim
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'token': token,
    };
  }
}
