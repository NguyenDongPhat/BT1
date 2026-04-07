
import 'dart:io';

const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() {
  print("Commands: help, version, search <ten>");
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Nhap noi dung can tim:');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Dang tim: "$articleTitle"...');
  print('Tim thay!');
}

/*

Hàm main nhận các tham số người dùng nhập từ terminal và xử lý như sau:
- Nếu không nhập gì hoặc nhập "help" thì hiển thị hướng dẫn sử dụng.
- Nếu nhập "version" thì in ra phiên bản của chương trình.
- Nếu nhập "search" thì gọi hàm searchWikipedia để xử lý tìm kiếm, ko tìm thật mà chỉ giả lập kết quả, in ra chữ người dùng nhập.
- Nếu nhập sai lệnh thì cũng hiển thị lại hướng dẫn.

Hàm printUsage dùng để in ra danh sách các lệnh hợp lệ.

Hàm searchWikipedia thực hiện việc xử lý tìm kiếm:
- Nếu người dùng không nhập nội dung tìm kiếm thì yêu cầu nhập từ bàn phím.
- Nếu đã nhập sẵn thì ghép các từ lại thành một chuỗi hoàn chỉnh.
- Sau đó in ra thông báo đang tìm kiếm và kết quả giả lập.
*/