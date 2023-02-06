// import 'dart:collection';

// class HashTable {
//   List<LinkedList<Map<int, String>>> _buckets;
//   int? _bucketSize;

//   HashTable(this._bucketSize) {
//     _buckets = List<LinkedList<MapEntry<int, String>>>(_bucketSize);
//     for (var i = 0; i < _bucketSize; i++) {
//       _buckets[i] = LinkedList<MapEntry<int, String>>();
//     }import 'dart:collection';

// class HashTable {
//   List<LinkedList<MapEntry<int, String>>> _buckets;
//   int _bucketSize;

//   HashTable(this._bucketSize) {
//     _buckets = List<LinkedList<MapEntry<int, String>>>(_bucketSize);
//     for (var i = 0; i < _bucketSize; i++) {
//       _buckets[i] = LinkedList<MapEntry<int, String>>();
//     }
//   }

//   int _hash(int key) {
//     return key.hashCode % _bucketSize;
//   }

//   void add(int key, String value) {
//     int index = _hash(key);
//     var entry = MapEntry(key, value);
//     _buckets[index].addLast(entry);
//   }

//   String? remove(int key) {
//     int index = _hash(key);
//     var bucket = _buckets[index];
//     for (var entry in bucket) {
//       if (entry.key == key) {
//         bucket.remove(entry);
//         return entry.value;
//       }
//     }
//     return null;
//   }

//   String? get(int key) {
//     int index = _hash(key);
//     var bucket = _buckets[index];
//     for (var entry in bucket) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return null;
//   }
// }

//   }

//   int _hash(int key) {
//     return key.hashCode % _bucketSize;
//   }

//   void add(int key, String value) {
//     int index = _hash(key);
//     var entry = MapEntry(key, value);
//     _buckets[index].addLast(entry);
//   }

//   String? remove(int key) {
//     int index = _hash(key);
//     var bucket = _buckets[index];
//     for (var entry in bucket) {
//       if (entry.key == key) {
//         bucket.remove(entry);
//         return entry.value;
//       }
//     }
//     return null;
//   }

//   String? get(int key) {
//     int index = _hash(key);
//     var bucket = _buckets[index];
//     for (var entry in bucket) {
//       if (entry.key == key) {
//         return entry.value;
//       }
//     }
//     return null;
//   }
// }
