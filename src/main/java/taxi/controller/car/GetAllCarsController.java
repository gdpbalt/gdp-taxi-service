package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

@WebServlet(urlPatterns = {"/", "/cars"})
public class GetAllCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars;
        boolean showOnlySelectedCars = false;
        if (req.getParameter("selected") != null) {
            showOnlySelectedCars = true;
            HttpSession session = req.getSession();
            Long driverId = (Long) session.getAttribute("user_id");
            allCars = carService.getAllByDriver(driverId);
        } else {
            allCars = carService.getAll();
        }
        req.setAttribute("selectedCars", showOnlySelectedCars);
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
