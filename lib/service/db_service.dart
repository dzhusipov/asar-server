import 'package:postgres/postgres.dart';

class DataBase {
  static PostgreSQLConnection? _connection;

  // connessione DB
  static Future<PostgreSQLConnection> get connect => _connect();

  static Future<PostgreSQLConnection> _connect() async {
    if (_connection == null || _connection!.isClosed) {
      _connection = PostgreSQLConnection(
        'localhost',
        5432,
        'postgres',
        username: 'postgres',
        password: 'postgres',
      );
      await _connection!.open();
    }

    return _connection!;
  }

  static close() {
    if (_connection != null) {
      _connection!.close();
      _connection = null;
    }
  }
}
