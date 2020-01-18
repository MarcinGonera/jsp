package com.sda.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet" , urlPatterns = {"/"}
                                        , initParams = {
        @WebInitParam(name="userId", value = "123456")
        ,@WebInitParam(name = "localization" , value = "Poland")})

public class HelloWorldServlet extends HttpServlet {

    private String userId, localization;

    @Override
    public void init(ServletConfig config) {
        userId = config.getInitParameter("userId");
        localization = config.getInitParameter("localization");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
         PrintWriter writer = response.getWriter();
         writer.println("UseId: " + userId );
         writer.println("Localization: " + localization);
         RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
         dispatcher.forward(request,response);

    }

}
