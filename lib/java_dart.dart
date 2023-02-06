import 'package:java_dart/node.dart';

class SinklyLikedList {
  Node? head;
  Node? tail;

//addList
  void addList(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

//delete value
  void delete(int data) {
    Node? temp = head;
    Node? prev ;

    if (temp != null && temp.data == data) {
      head = temp.next;
      print('head delete');
      return;
    }
    while (temp != null && temp.data == data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = prev;
      // tail!.next ;
      tail!.next == null;
      print('delete tail');
      return;
    }
    prev!.next = temp.next;
  }

//display value
  void display() {
    if (head == null) {
      print('value is empty');
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void insert(int data, var indexofNext) {
    Node newNode = Node(data);
    Node? prev;
    Node? temp = head;
    if (head != null && head == indexofNext) {
      head!.next = head;
      head = newNode;
      return;
    }
    while (temp != null && temp != newNode) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (tail == indexofNext) {
      tail!.next = tail;
      tail = newNode;
      return;
    }
    prev!.next = newNode;
    temp = temp.next;
  }
}

class sarray{
  Node? head;
  Node? tail;

  void addValue(int data){
    Node newNode = Node(data);

    if(head == null){
      head = newNode;
      return;
    }else{
      tail = tail!.next;
      tail = newNode;
    }
    tail!.next = newNode;
    tail = tail!.next;
  }

  

  void display(){
    Node? temp = head;
    if(head == null){
      print('head is empty');
      return;
    }
    
    while(temp != null){
      print(temp);
      temp = temp.next;
      
    }
  }
}
