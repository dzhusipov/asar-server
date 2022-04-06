import 'package:asar_server/asar_server.dart' as asar_server;
import 'package:shelf/shelf_io.dart' as shelf_io;

void main(List<String> arguments) async {
  final service = asar_server.AsarServer();
  final server = await shelf_io.serve(service.handler, 'localhost', 8080);
  print('Server running on localhost:${server.port}');
}
