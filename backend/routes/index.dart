import 'package:backend/src/generated/prisma/prisma_client.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final prisma = context.read<PrismaClient>();
  final users = (await prisma.course.findMany()).toList();
  // final user = await prisma.user.create(
  //   data: UserCreateInput(name: 'Odroe', id: '122333'),
  // );
  // print(Platform.environment['DATABASE_URL']);
  return Response.json(body: users);
}
