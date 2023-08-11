import 'dart:io';

import 'package:backend/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:shared/shared.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => _authenticationUser(context),
    _ => Future.value(Response(statusCode: HttpStatus.methodNotAllowed)),
  };
}

Future<Response> _authenticationUser(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final username = json['username'] as String?;
  final password = json['password'] as String?;

  if (username == null || password == null) {
    return Response(statusCode: HttpStatus.badRequest);
  }
  final userRepo = context.read<UserRepository>();
  final dbuser =
      await userRepo.authUser(username: username, password: password);
  if (dbuser == null) {
    return Response(statusCode: HttpStatus.unauthorized);
  }
  final user = User.fromJson(dbuser.toJson());
  return Response.json(body: user);
}
