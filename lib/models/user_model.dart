import 'dart:convert';

class UserModel {
  final String user;
  final String password;
  final String name;
  UserModel({
    this.user,
    this.password,
    this.name,
  });

  UserModel copyWith({
    String user,
    String password,
    String name,
  }) {
    return UserModel(
      user: user ?? this.user,
      password: password ?? this.password,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'password': password,
      'name': name,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return UserModel(
      user: map['user'],
      password: map['password'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(user: $user, password: $password, name: $name)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is UserModel &&
      o.user == user &&
      o.password == password &&
      o.name == name;
  }

  @override
  int get hashCode => user.hashCode ^ password.hashCode ^ name.hashCode;
}
