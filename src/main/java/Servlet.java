import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
@WebServlet(urlPatterns = ("/loja"))
public class Servlet extends HttpServlet{
    @Override
    public void doGet ( HttpServletRequest req,
                        HttpServletResponse res){
        File newFile = new File ("../webapp/loja-estoque/index.html");
        try{
            PrintWriter pw = res.getWriter();
            pw.write("Build com gradle Funcionando!");
            pw.close();
        } catch (Exception e) {
            System.out.println("Erro em IO ou Servlet");
        }
    }
}