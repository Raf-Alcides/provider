import 'package:flutter/material.dart';

class UserRepository extends InheritedWidget {
  final String name;

  const UserRepository({
    super.key,
    required this.name,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static UserRepository? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserRepository>();
  }
}
