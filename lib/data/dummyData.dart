//#Models
import '../models/chatMsg.dart';
import '../models/ticketDetails.dart';


 const List <ChatMessage> msgs = const [
   ChatMessage(msgContent: 'Hello',msgType: 'reciever'),
   ChatMessage(msgContent: 'How\'re you?',msgType: 'reciever'),
   ChatMessage(msgContent: 'Hello',msgType: 'sender'),
   ChatMessage(msgContent: 'I\'m fine, wbu?',msgType: 'sender'),
   ChatMessage(msgContent: 'Great',msgType: 'reciever'),
   ChatMessage(msgContent: 'Hello',msgType: 'reciever'),
   ChatMessage(msgContent: 'How\'re you?',msgType: 'reciever'),
   ChatMessage(msgContent: 'Hello',msgType: 'sender'),
   ChatMessage(msgContent: 'I\'m fine, wbu?',msgType: 'sender'),
   ChatMessage(msgContent: 'Great',msgType: 'reciever'),
   ChatMessage(msgContent: 'Hello',msgType: 'reciever'),
   ChatMessage(msgContent: 'How\'re you?',msgType: 'reciever'),
   ChatMessage(msgContent: 'Hello',msgType: 'sender'),
   ChatMessage(msgContent: 'I\'m fine, wbu?',msgType: 'sender'),
   ChatMessage(msgContent: 'Great',msgType: 'reciever'),
];
  List<TicketDetail> ticket =  [
  TicketDetail(id: '1121212121221',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '2',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '3',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '4',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '1121212121221',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '2',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '3',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '4',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '1121212121221',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '2',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '3',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '4',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
];