import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

void main() {
  runApp(Flutter95App());
}

class Flutter95App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Flutter95.background,
      home: Scaffold95(
        title: 'Flutter95',
        body: Column(
          children: <Widget>[
            Button95(
              onTap: () {},
              child: Text('Button95'),
            ),
            const SizedBox(height: 4),
            Text(
              'Text with Flutter95.textStyle',
              style: Flutter95.textStyle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField95(),
            ),
            _buildListView(),
          ],
        ),
      ),
    );
  }

  /// Build a ListView wrapping it in [Elevation95] with [Elevation95Type.down].
  /// This will create a "deep" container.
  /// Then wrap each item with [Elevation95Type.up] to create an up effect.
  Padding _buildListView() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Elevation95(
        type: Elevation95Type.down,
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Elevation95(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Item $index',
                    style: Flutter95.textStyle,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
