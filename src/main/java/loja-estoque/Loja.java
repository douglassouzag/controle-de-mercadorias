import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.PrintWriter;

@WebServlet(urlPatterns={"/loja"})

public class Loja extends HttpServlet {
    public void doGet (HttpServletRequest req, HttpServletResponse res) {
     try {
            req.getRequestDispatcher("/loja.jsp").forward(req, res);
        } catch (Exception e) {
            System.out.println("Erro em 10 ou Servlet");
        }
    }
}