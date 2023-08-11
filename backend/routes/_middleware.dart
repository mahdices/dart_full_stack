import 'package:backend/src/generated/prisma/prisma_client.dart';
import 'package:backend/user_repository.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:orm/logger.dart';

final _env = DotEnv()..load();
final _prisma = PrismaClient(
  stdout: Event.values, // print all events to the console
  datasources: Datasources(
    db: _env['DATABASE_URL'],
  ),
);

Handler middleware(Handler handler) {
  return handler
      .use(provider<PrismaClient>((context) => _prisma))
      .use(provider<UserRepository>((context) => UserRepository(_prisma)));
}
