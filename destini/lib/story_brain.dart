import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyTitle: 'Chiếc xe của bạn bị thủng lốp trên một con đường quanh co giữa nơi hoang vắng không có sóng điện thoại. Bạn quyết định đi nhờ xe. Một chiếc bán tải gỉ sét nồng nặc dừng lại bên cạnh bạn. Một người đàn ông đội mũ rộng vành với đôi mắt vô hồn mở cửa hàngnh cho bạn và hỏi: "Cần đi nhờ không, cậu?".',
      choice1: 'Tôi sẽ lên xe. Cảm ơn bạn đã giúp đỡ!',
      choice2: 'Để tôi hỏi anh ta có phải kẻ giết người không đã.',
    ),
    Story(
      storyTitle: 'Anh ta gật đầu chậm rãi, không bị ảnh hưởng bởi câu hỏi.',
      choice1: 'Ít nhất anh ta thành thật. Tôi sẽ lên xe.',
      choice2: 'Khoan đã, tôi biết cách thay lốp xe.',
    ),
    Story(
      storyTitle: 'Khi bạn bắt đầu lái xe, người lạ bắt đầu nói về mối quan hệ với mẹ mình. Anh ta càng lúc càng tức giận. Anh ta yêu cầu bạn mở ngăn kéo. Bên trong bạn thấy một con dao đẫm máu, hai ngón tay bị cắt đứt và một băng cassette Elton John. Anh ta vươn tay đến ngăn kéo.',
      choice1: 'Tôi thích Elton John! Đưa anh ta băng cassette.',
      choice2: 'Là anh ta hay là tôi! Bạn lấy dao đâm anh ta.',
    ),
    Story(
      storyTitle: 'Cái gì? Thật là trốn tránh! Bạn có biết tai nạn giao thông là nguyên nhân dẫn đến tử vong vô cớ thứ hai cho hầu hết các nhóm tuổi trưởng thành không?',
      choice1: 'Bắt đầu lại',
      choice2: '',
    ),
    Story(
      storyTitle: 'Khi bạn đâm vào hàng rào chắn và lao xuống những tảng nhọn phía dưới, bạn suy ngẫm về sự khôn ngoan đáng ngờ của việc đâm ai đó trong khi họ đang lái xe bạn đi.',
      choice1: 'Bắt đầu lại',
      choice2: '',
    ),
    Story(
      storyTitle: 'Bạn gắn kết với kẻ giết người trong khi hát lại các câu "Can you feel the love tonight". Anh ta để bạn xuống ở thị trấn tiếp theo. Trớc khi đi anh ta hỏi bạn có biết nơi nào tốt để chôn xác không. Bạn trả lời: "Thử bến cảng".',
      choice1: 'Bắt đầu lại',
      choice2: '',
    ),
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
