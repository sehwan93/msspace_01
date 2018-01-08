package multi.mypage.message.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import main.vo.MessageVO;

public class MessageDAO_MybatisImpl implements MessageDAO{

	@Autowired @Qualifier("sqlSession")
	private SqlSession sqlSession = null;
	
	@Override
	public List<MessageVO> find_receiveMessage(String user_id) {
		return sqlSession.selectList("apple.mypage_message_findReceiveMessage",user_id);
	}

	@Override
	public MessageVO read_receiveMessage(String msg_no) {
		return sqlSession.selectOne("apple.mypage_message_readReceiveMessage",msg_no);
	}

	@Override
	public List<MessageVO> find_sendMessage(String user_id) {
		return sqlSession.selectList("apple.mypage_message_findSendMessage",user_id);
	}

	@Override
	public MessageVO read_sendMessage(String msg_no) {
		return sqlSession.selectOne("apple.mypage_message_readSendMessage",msg_no);
	}

	@Override
	public int send_Message(MessageVO pvo) {
		return sqlSession.insert("apple.mypage_message_SendMessage",pvo);
	}
	

	

}
