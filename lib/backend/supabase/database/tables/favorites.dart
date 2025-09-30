import '../database.dart';

class FavoritesTable extends SupabaseTable<FavoritesRow> {
  @override
  String get tableName => 'favorites';

  @override
  FavoritesRow createRow(Map<String, dynamic> data) => FavoritesRow(data);
}

class FavoritesRow extends SupabaseDataRow {
  FavoritesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get clientId => getField<String>('client_id');
  set clientId(String? value) => setField<String>('client_id', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
