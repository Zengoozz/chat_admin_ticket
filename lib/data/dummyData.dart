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
  List<TicketDetail> allTickets =  [
  TicketDetail(id: '1',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '2',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '3',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '4',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  /* TicketDetail(id: '5',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '6',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '7',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '8',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '9',name:'Test1', userName: 'ahmed', assignedTo: 'Z_admin', status: 'Active', timeStamp: DateTime.now(),),
  TicketDetail(id: '10',name:'Test2', userName: 'nader', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),),
  TicketDetail(id: '11',name:'Test3', userName: 'zeyad', assignedTo: 'Z_admin', status: 'Closed', timeStamp: DateTime.now(),),
  TicketDetail(id: '12',name:'Test4', userName: 'tarek', assignedTo: 'Z_admin', status: 'Waiting', timeStamp: DateTime.now(),), */
];