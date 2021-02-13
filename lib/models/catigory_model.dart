import 'dart:convert';

class CatigoryModel {
  final String id;
  final String name;
  final String url;
  CatigoryModel({
    this.id,
    this.name,
    this.url,
  });

  CatigoryModel copyWith({
    String id,
    String name,
    String url,
  }) {
    return CatigoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
    };
  }

  factory CatigoryModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return CatigoryModel(
      id: map['id'],
      name: map['name'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CatigoryModel.fromJson(String source) => CatigoryModel.fromMap(json.decode(source));

  @override
  String toString() => 'CatigoryModel(id: $id, name: $name, url: $url)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is CatigoryModel &&
      o.id == id &&
      o.name == name &&
      o.url == url;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ url.hashCode;
}
