class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'Bilinmeyen Ürün',
      description: json['description'] ?? 'Açıklama bulunmuyor',
      price: (json['price'] ?? 0).toDouble(),
      imageUrl: json['image'] ?? '',
      rating: (json['rating']?['rate'] ?? 0).toDouble(),
    );
  }
}
