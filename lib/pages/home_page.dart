import 'package:flutter/material.dart';

import 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Frenzy Chat')),
      body: ChatScreen(),
    );
  }
}
