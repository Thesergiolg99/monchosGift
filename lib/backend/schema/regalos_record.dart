import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegalosRecord extends FirestoreRecord {
  RegalosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "regalo" field.
  RegalosStruct? _regalo;
  RegalosStruct get regalo => _regalo ?? RegalosStruct();
  bool hasRegalo() => _regalo != null;

  void _initializeFields() {
    _regalo = RegalosStruct.maybeFromMap(snapshotData['regalo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('regalos');

  static Stream<RegalosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegalosRecord.fromSnapshot(s));

  static Future<RegalosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegalosRecord.fromSnapshot(s));

  static RegalosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegalosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegalosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegalosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegalosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegalosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegalosRecordData({
  RegalosStruct? regalo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'regalo': RegalosStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "regalo" field.
  addRegalosStructData(firestoreData, regalo, 'regalo');

  return firestoreData;
}

class RegalosRecordDocumentEquality implements Equality<RegalosRecord> {
  const RegalosRecordDocumentEquality();

  @override
  bool equals(RegalosRecord? e1, RegalosRecord? e2) {
    return e1?.regalo == e2?.regalo;
  }

  @override
  int hash(RegalosRecord? e) => const ListEquality().hash([e?.regalo]);

  @override
  bool isValidKey(Object? o) => o is RegalosRecord;
}
