import '../database.dart';

class ServiceImagesTable extends SupabaseTable<ServiceImagesRow> {
  @override
  String get tableName => 'service_images';

  @override
  ServiceImagesRow createRow(Map<String, dynamic> data) =>
      ServiceImagesRow(data);
}

class ServiceImagesRow extends SupabaseDataRow {
  ServiceImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceImagesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get serviceId => getField<String>('service_id');
  set serviceId(String? value) => setField<String>('service_id', value);

  String get storagePath => getField<String>('storage_path')!;
  set storagePath(String value) => setField<String>('storage_path', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
