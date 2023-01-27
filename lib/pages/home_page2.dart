import 'package:flutter/material.dart';
import 'package:peeeee/services/user_service_provider.dart';
import 'package:provider/provider.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Text(Provider.of<UserServiceProvider>(context, listen: false).getName()),
      ),
    );
  }
}
