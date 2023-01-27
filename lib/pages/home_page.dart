import 'package:flutter/material.dart';
import 'package:peeeee/services/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Text(UserService.of(context)?.getName() ?? 'Não encontramos o service'),
      ),
    );
  }
}
