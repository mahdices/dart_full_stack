import 'dart:io';
import 'package:backend/src/generated/prisma/prisma_client.dart';
import 'package:backend/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:orm/logger.dart';

final _prisma = PrismaClient(
  stdout: Event.values, // print all events to the console
  datasources: Datasources(
    db: Platform.environment['DATABASE_URL'],
  ),
);

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(provider<PrismaClient>((context) => _prisma))
      .use(provider<UserRepository>((context) => UserRepository(_prisma)));
}
