import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //session from favColor
        HttpSession session = request.getSession();
        if (session.getAttribute("sessionColor") == null){
            request.setAttribute("pageColor", "transparent");
        } else {
            request.setAttribute("pageColor", session.getAttribute("sessionColor"));
        }

        //removes session attribute
//        session.removeAttribute("sessionColor");

        //removes session Ex. if the user were to log out or if the session timed out
//        session.invalidate();

        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
