import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public List<Employee> employeeList = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String dobString = request.getParameter("dob");
        String email = request.getParameter("email");
        String joiningDateString = request.getParameter("joiningDate");
        int employeeType = Integer.parseInt(request.getParameter("employeeType"));

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date dateOfBirth = null;
        Date joiningDate = null;

        try {
            dateOfBirth = dateFormat.parse(dobString);
            joiningDate = dateFormat.parse(joiningDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Employee employee;
        if (employeeType == 1) {
            employee = new Officer(id, name, dateOfBirth, email, joiningDate);
        } else {
            employee = new Staff(id, name, dateOfBirth, email, joiningDate);
        }

        employeeList.add(employee);

        response.sendRedirect("employeeList.jsp");
    }
}
