import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/favorite-color")
public class ChooseColorServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //send any request and response you doGet and send to specified page
        request.getRequestDispatcher("/favorite-color.jsp").forward(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //will handle the post request from jsp
        String favColor = request.getParameter("color");
        HttpSession session = request.getSession();
        session.setAttribute("sessionColor", favColor);

    }

}
