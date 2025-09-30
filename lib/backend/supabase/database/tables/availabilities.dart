import '../database.dart';

class AvailabilitiesTable extends SupabaseTable<AvailabilitiesRow> {
  @override
  String get tableName => 'availabilities';

  @override
  AvailabilitiesRow createRow(Map<String, dynamic> data) =>
      AvailabilitiesRow(data);
}

class AvailabilitiesRow extends SupabaseDataRow {
  AvailabilitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvailabilitiesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get prestataireId => getField<String>('prestataire_id');
  set prestataireId(String? value) => setField<String>('prestataire_id', value);

  DateTime? get startAt => getField<DateTime>('start_at');
  set startAt(DateTime? value) => setField<DateTime>('start_at', value);

  DateTime? get endAt => getField<DateTime>('end_at');
  set endAt(DateTime? value) => setField<DateTime>('end_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
