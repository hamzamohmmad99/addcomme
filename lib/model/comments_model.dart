import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CommentsModel {
  String name;
  String description;
  CommentsModel({
    required this.name,
    required this.description,
  });


  CommentsModel copyWith({
    String? name,
    String? description,
  }) {
    return CommentsModel(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
    };
  }

  factory CommentsModel.fromMap(Map<String, dynamic> map) {
    return CommentsModel(
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentsModel.fromJson(String source) => CommentsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CommentsModel(name: $name, description: $description)';

  @override
  bool operator ==(covariant CommentsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.description == description;
  }

  @override
  int get hashCode => name.hashCode ^ description.hashCode;
}
