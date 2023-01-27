import 'package:flutter/material.dart';
import 'package:peeeee/repositories/user_repository.dart';

class UserService extends InheritedWidget {
  final UserRepository repository;

  const UserService({
    super.key,
    required this.repository,
    required super.child,
  });

  String getName() => repository.name;
  
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static UserService? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserService>();
  }
}
