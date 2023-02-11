class HashTable {
  List<List<List<dynamic>>>? buckets;
  int? bucketCount;

  HashTable(int bucketCount) {
    bucketCount = bucketCount;
    buckets = List.generate(bucketCount, (_) => []);
  }

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash += key.codeUnitAt(i);
    }
    return hash % bucketCount!;
  }

  void set(String key, dynamic value) {
    int index = _hash(key);
    List<List<dynamic>> bucket = buckets![index];

    for (List<dynamic> entry in bucket) {
      if (entry[0] == key) {
        entry[1] = value;
        return;
      }
    }

    bucket.add([key, value]);
  }

  dynamic get(String key) {
    int index = _hash(key);
    List<List<dynamic>> bucket = buckets![index];

    for (List<dynamic> entry in bucket) {
      if (entry[0] == key) {
        return entry[1];
      }
    }

    return null;
  }

  void remove(String key) {
    int index = _hash(key);
    List<List<dynamic>> bucket = buckets![index];

    int i = 0;
    for (List<dynamic> entry in bucket) {
      if (entry[0] == key) {
        bucket.removeAt(i);
        return;
      }
      i++;
    }
  }
}
