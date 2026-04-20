import 'package:flutter_test/flutter_test.dart';
import 'package:mini_katalog/main.dart';

void main() {
  testWidgets('Mini Katalog app loads successfully', (WidgetTester tester) async {
    // Uygulamamızı test motoruna yüklüyoruz.
    await tester.pumpWidget(const MiniKatalogApp());

    // Ana sayfamızın (Keşfet) yüklendiğini doğruluyoruz.
    expect(find.text('Keşfet'), findsOneWidget);
  });
}
