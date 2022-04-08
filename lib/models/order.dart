class Order {
  final int? id;
  final String? title;
  final String? description;
  final int? totalPrice;
  final String? imageUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final int? currentMoney;
  final int? userId;
  final String? username;
  final String? tags;

  Order({
    this.id,
    this.title,
    this.description,
    this.totalPrice,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.currentMoney,
    this.userId,
    this.username,
    this.tags,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        totalPrice: json["total_price"],
        imageUrl: json["image_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"] == null
            ? null
            : DateTime.parse(json["deleted_at"]),
        currentMoney: json["current_money"],
        userId: json["user_id"],
        username: json["username"],
        tags: json["tags"],
      );
}
