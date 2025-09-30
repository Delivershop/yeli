import '../database.dart';

class WalletTable extends SupabaseTable<WalletRow> {
  @override
  String get tableName => 'wallet';

  @override
  WalletRow createRow(Map<String, dynamic> data) => WalletRow(data);
}

class WalletRow extends SupabaseDataRow {
  WalletRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WalletTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);
}
