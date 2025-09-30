import '../database.dart';

class WalletsTable extends SupabaseTable<WalletsRow> {
  @override
  String get tableName => 'wallets';

  @override
  WalletsRow createRow(Map<String, dynamic> data) => WalletsRow(data);
}

class WalletsRow extends SupabaseDataRow {
  WalletsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WalletsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get prestataireId => getField<String>('prestataire_id');
  set prestataireId(String? value) => setField<String>('prestataire_id', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
