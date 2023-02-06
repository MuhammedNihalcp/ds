import 'package:java_dart/node.dart';

class Stack {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }
  void pop(){
    if(top == null){
      print('stack underflow');
      return;
    }
    top = top!.next;
  }

  void display() {
    Node temp = top!;

    while (temp != null) {
      print(temp.data);
      temp = temp.next!;
    }
  }
}
