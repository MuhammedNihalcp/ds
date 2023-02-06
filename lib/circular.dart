import 'package:java_dart/node.dart';

class SinglyCircularLinkedList {
  Node? head;

  void insertFirst(int data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
      head!.next = head;
    } else {
      var temp = head;
      while (temp!.next != head) {
        temp = temp.next;
      }
      newNode.next = head;
      temp.next = newNode;
      head = newNode;
    }
  }

  void insertLast(int data) {
    var newNode = Node(data);
    if (head == null) {
      head = newNode;
      head!.next = head;
    } else {
      var temp = head;
      while (temp!.next != head) {
        temp = temp.next;
      }
      temp.next = newNode;
      newNode.next = head;
    }
  }

  void deleteFirst() {
    if (head == null) {
      return;
    } else {
      var temp = head;
      while (temp!.next != head) {
        temp = temp.next;
      }
      temp.next = head!.next;
      head = head!.next;
    }
  }

  void displayList() {
    if (head == null) {
      return;
    } else {
      var temp = head;
      do {
        print(temp!.data);
        temp = temp.next;
      } while (temp != head);
    }
  }
}