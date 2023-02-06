import 'package:java_dart/node.dart';

class Queues {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newNode = Node(data);

    if (rear == null) {
      front = rear = newNode;
      return;
    }
    rear!.next = newNode;
    rear = newNode; 
  }

  void dequeue(){
    if(front == null){
      print('empty');
    }
    front = front!.next;
    if(front == null){
      rear = null;
      return;
    }
  }
  void display(){
    Node? temp = front;
    if(front == null){
      print('value is empty');
      return;
    }
    while(temp != null){
      print(temp.data);
      temp = temp.next!;
    }
  }
}
