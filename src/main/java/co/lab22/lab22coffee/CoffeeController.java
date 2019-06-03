package co.lab22.lab22coffee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CoffeeController {
	@Autowired
	UsersRepository u;

	@RequestMapping("/home")
	public ModelAndView formDetails() {

		return new ModelAndView("index");
	}

	@RequestMapping("firstone")
	public ModelAndView formIntake() {
		return new ModelAndView("regCoffee");
	}

	@PostMapping("/form-info")
	// we consume data using params that match the name attribute
	// in the input fields
	public ModelAndView addUser(Users user) {
		String name = user.getfirstname();
		u.save(user);
		return new ModelAndView("hiPage", "cR", name);

	

	}
}
