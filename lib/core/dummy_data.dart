import 'dart:convert';
import '../models/product_model.dart';

const String mockJsonData = '''[
  {
    "id": 1,
    "title": "Sırt Çantası",
    "price": 3500,
    "description": "Günlük kullanım ve orman yürüyüşleri için mükemmel sırt çantanız. Laptop bölmesi mevcuttur ve su geçirmez özel kumaşa sahiptir.",
    "category": "erkek giyim",
    "image": "assets/images/urun1.jpg",
    "rating": {
      "rate": 3.9,
      "count": 120
    }
  },
  {
    "id": 2,
    "title": "Erkek Günlük Premium Tişört",
    "price": 1200,
    "description": "Dar kesim tarzı, uzun kollu, nefes alabilir ve günlük giyim için uygun son derece yumuşak pamuklu kumaş yapısı.",
    "category": "erkek giyim",
    "image": "assets/images/urun2.jpg",
    "rating": {
      "rate": 4.1,
      "count": 259
    }
  },
  {
    "id": 3,
    "title": "Erkek Pamuklu Kışlık Mont",
    "price": 4850,
    "description": "İlkbahar, Sonbahar ve Kış aylarında dış giyim olarak kullanılabilir. Doğa yürüyüşü, kampçılık ve dağ tırmanışı için test edilmiştir.",
    "category": "erkek giyim",
    "image": "assets/images/urun3.jpg",
    "rating": {
      "rate": 4.7,
      "count": 500
    }
  },
  {
    "id": 4,
    "title": "Erkek Dar Kesim Gömlek",
    "price": 1500,
    "description": "Şık davetlerinizde veya ofiste rahatlıkla giyebilirsiniz. Vücudu sıkıca saran dar kalıp sayesinde estetik bir görünüm sağlar.",
    "category": "erkek giyim",
    "image": "assets/images/urun4.jpg",
    "rating": {
      "rate": 2.1,
      "count": 430
    }
  }
]''';

class ProductService {
  static List<Product> getMockProducts() {
    final List<dynamic> parsedList = json.decode(mockJsonData);
    return parsedList.map((jsonItem) => Product.fromJson(jsonItem)).toList();
  }
}
