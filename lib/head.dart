class HeapSort {
  void heapSort(List<int> list) {
    int n = list.length;

    // Build max heap
    for (int i = n ~/ 2 - 1; i >= 0; i--) {
      heapify(list, n, i);
    }

    // Heap sort
    for (int i = n - 1; i >= 0; i--) {
      // Move current root to end
      int temp = list[0];
      list[0] = list[i];
      list[i] = temp;

      // Call max heapify on the reduced heap
      heapify(list, i, 0);
    }
    for (var i = 0; i < list.length; i++) {
      print(list[i]);
    }
  }

  void heapify(List<int> list, int n, int i) {
    int largest = i; // Initialize largest as root
    int l = 2 * i + 1; // left = 2*i + 1
    int r = 2 * i + 2; // right = 2*i + 2

    // If left child is larger than root
    if (l < n && list[l] > list[largest]) {
      largest = l;
    }

    // If right child is larger than largest so far
    if (r < n && list[r] > list[largest]) {
      largest = r;
    }

    // If largest is not root
    if (largest != i) {
      int swap = list[i];
      list[i] = list[largest];
      list[largest] = swap;

      // Recursively heapify the affected sub-tree
      heapify(list, n, largest);
    }
  }
}
