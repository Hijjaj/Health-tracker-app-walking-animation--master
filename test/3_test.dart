import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:walking_animation/screen/3.dart';

void main() {
  testWidgets('ThreeScreen builds correctly', (WidgetTester tester) async {
    await tester
        .pumpWidget(MaterialApp(home: Scaffold(body: ThreeScreen()), f));

    expect(find.text('PROFILE'), findsOneWidget);

    expect(find.text('NJ'), findsOneWidget);

    expect(find.text('23 years old'), findsOneWidget);

    expect(find.text('Daily goals'), findsOneWidget);

    expect(find.byType(ProfileStats), findsNWidgets(3));

    expect(find.byType(HolePainter), findsOneWidget);
  });
}
