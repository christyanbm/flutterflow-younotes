import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotasRecord extends FirestoreRecord {
  NotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "notas_datos" field.
  String? _notasDatos;
  String get notasDatos => _notasDatos ?? '';
  bool hasNotasDatos() => _notasDatos != null;

  // "crear_tiempo" field.
  DateTime? _crearTiempo;
  DateTime? get crearTiempo => _crearTiempo;
  bool hasCrearTiempo() => _crearTiempo != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  void _initializeFields() {
    _notasDatos = snapshotData['notas_datos'] as String?;
    _crearTiempo = snapshotData['crear_tiempo'] as DateTime?;
    _userId = snapshotData['user_id'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _titulo = snapshotData['titulo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notas');

  static Stream<NotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotasRecord.fromSnapshot(s));

  static Future<NotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotasRecord.fromSnapshot(s));

  static NotasRecord fromSnapshot(DocumentSnapshot snapshot) => NotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotasRecordData({
  String? notasDatos,
  DateTime? crearTiempo,
  String? userId,
  String? descripcion,
  String? titulo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notas_datos': notasDatos,
      'crear_tiempo': crearTiempo,
      'user_id': userId,
      'descripcion': descripcion,
      'titulo': titulo,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotasRecordDocumentEquality implements Equality<NotasRecord> {
  const NotasRecordDocumentEquality();

  @override
  bool equals(NotasRecord? e1, NotasRecord? e2) {
    return e1?.notasDatos == e2?.notasDatos &&
        e1?.crearTiempo == e2?.crearTiempo &&
        e1?.userId == e2?.userId &&
        e1?.descripcion == e2?.descripcion &&
        e1?.titulo == e2?.titulo;
  }

  @override
  int hash(NotasRecord? e) => const ListEquality().hash(
      [e?.notasDatos, e?.crearTiempo, e?.userId, e?.descripcion, e?.titulo]);

  @override
  bool isValidKey(Object? o) => o is NotasRecord;
}
