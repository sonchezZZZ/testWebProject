package com.sonchez;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CounterServlet extends HttpServlet {
    List<String> postAnswers = new ArrayList<>();
    static int countOfGetMethods = 0;
    static int countOfPostMethods = 0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        countOfGetMethods++;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/jsp/count.jsp");
        request.setAttribute("GetMethods",countOfGetMethods);
        request.setAttribute("PostMethods",countOfPostMethods);
        request.setAttribute("AllMethods",(countOfPostMethods+countOfGetMethods));
        request.setAttribute("formAnswers",postAnswers);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        countOfPostMethods++;
        String result = "key: "+request.getParameter("key")+", value: "+request.getParameter("value");
        postAnswers.add(result);
        doGet(request,response);
    }
}
