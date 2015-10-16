package sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.MemberVo;

@WebServlet("/04")
public class _04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		MemberVo memberVo1 = new MemberVo();
		memberVo1.setNo(1L);
		memberVo1.setName("최상규1");
		memberVo1.setEmail("chuska1@naver.com");
		HttpSession session = request.getSession(true);
		session.setAttribute("user", memberVo1);
		MemberVo memberVo2 = new MemberVo();
		memberVo2.setNo(2L);
		memberVo2.setName("최상규2");
		memberVo2.setEmail("chuska2@naver.com");
		request.setAttribute("user", memberVo2);
		request.getRequestDispatcher("/view/04.jsp").forward(request, response);
	}
}
