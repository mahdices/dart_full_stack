import 'dart:convert';

import 'package:backend/src/generated/prisma/prisma_client.dart';
import 'package:crypto/crypto.dart';

class UserRepository {
  UserRepository(this._db);

  final PrismaClient _db;

  Future<User?> authUser({
    required String username,
    required String password,
  }) async {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    final user = await _db.user.findFirst(
      where: UserWhereInput(
        username: StringFilter(equals: username),
        password: StringFilter(equals: digest.toString()),
      ),
    );
    return user;
  }

  Future<User?> createUser({
    required String username,
    required String password,
    required String name,
  }) async {
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    final user = await _db.user.create(
        data: UserCreateInput(
      id: username.codeUnits.toString(),
      username: username,
      password: digest.toString(),
      name: name,
    ));
    return user;
  }
}
