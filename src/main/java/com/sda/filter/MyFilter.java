package com.sda.filter;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.LogRecord;

public class MyFilter implements Filter {


    @Override
    public void doFilter(
              ServletRequest request
            , ServletResponse response
            , FilterChain chain) throws IOException, ServletException {
        PrintWriter writer = response.getWriter();
        writer.write("<html><body><div style='text-align: center;'>");
        String login = request.getParameter("login");

        if(login != null && login.equals("admin")) {
            chain.doFilter(request, response);
        } else {
            writer.print("<p style='color: red; font-size: larger:'>"
                    + "User name is invalid"
                    + "</p>");
        }
        writer.write("</div></body></html>");
        writer.close();

    }
}

