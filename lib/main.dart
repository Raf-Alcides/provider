import 'package:flutter/material.dart';
import 'package:peeeee/pages/home_page.dart';
import 'package:peeeee/pages/home_page2.dart';
import 'package:peeeee/repositories/user_repository_provider.dart';
import 'package:peeeee/services/user_service_provider.dart';
import 'package:provider/provider.dart';

import 'repositories/user_repository.dart';
import 'services/user_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Provider(
            create: (context) => UserRepositoryProvider(
                  name: 'Rafael Alcides',
                ),
            child: Provider(create: (context) => UserServiceProvider(repository: Provider.of<UserRepositoryProvider>(context, listen: false)),
            child: const HomePage2()))
      },
      // routes: {
      //   '/': (context) => UserRepository(
      //         name: 'Rafael Alcides',
      //         child: Builder(
      //           builder: (context) {
      //             return UserService(
      //                 repository: UserRepository.of(context)!,
      //                 child: const HomePage());
      //           }
      //         ),
      //       ),
      // },
    );
  }
}
