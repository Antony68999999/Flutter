import 'package:flutter/material.dart';

void main() {
  runApp(const SpacedItemsList());
}

class SpacedItemsList extends StatelessWidget {
  const SpacedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp( title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: CardTheme(color: Colors.blue.shade50),
        useMaterial3: true,
      ),
      home: Scaffold(
        body:LayoutBuilder(builder: (context, constraints) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(minHeight: constraints.maxHeight),
      child: const IntrinsicHeight(
        child: Column(
          children: [
            ItemWidget(text: 'Item 1'),
            Spacer(),
            ItemWidget(text: 'Item 2'),
            Spacer(),
            ItemWidget(text: 'Item 3'),
            Spacer(),
            ItemWidget(text: 'Item 4'),
            
          ],
        ),
      ),
    ),
  );
}),
      ),
    );
  }
}
class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key,required this.text,});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
      ),
    );
  }
}
