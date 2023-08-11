import 'dart:io';

import 'package:backend/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

Future<Response> onRequest(RequestContext context) {
  return switch (context.request.method) {
    HttpMethod.post => _createUser(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _createUser(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final username = json['username'] as String?;
  final password = json['password'] as String?;
  final name = json['name'] as String?;
  if (username == null || password == null || name == null) {
    return Response(statusCode: HttpStatus.badRequest);
  }
  final userRepo = context.read<UserRepository>();
  final dbuser = await userRepo.createUser(
    username: username,
    password: password,
    name: name,
  );

  return Response.json(body: User.fromJson(dbuser!.toJson()));
}
