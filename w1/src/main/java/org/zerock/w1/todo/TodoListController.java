package org.zerock.w1.todo;

import org.zerock.w1.todo.dto.TodoDTO;
import org.zerock.w1.todo.service.TodoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "TodoListController", urlPatterns = "/todo/list")
public class TodoListController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // jsp 아직 구현안해서 확인용
        System.out.println("/todo/list");

        // 웹 MVC 구조에서는 필용한 데이터를 처리하기 위해
        // 컨트롤러(TodoListController)는 서비스 객체(TodoService)의 힘을 빌려서 처리한다.
        List<TodoDTO> dtoList = TodoService.INSTANCE.getList();

        req.setAttribute("list", dtoList);

        req.getRequestDispatcher("/WEB-INF/todo/list.jsp").forward(req, resp);
    }
}
