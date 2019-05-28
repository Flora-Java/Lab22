package co.lab22.lab22coffee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeController {
	@Autowired
	Client newClient;

	@RequestMapping("/")
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
	public ModelAndView formDetails(@RequestParam("first") String fName, @RequestParam("last") String lName,
			@RequestParam("email") String emailC, @RequestParam("phone") String phoneC,
			@RequestParam("passwrd") String passwrdC) {

		Client client = new Client(fName, lName, emailC, phoneC, passwrdC);
		 String nomClient = client.getFirstName();
		return new ModelAndView("hiPage", "cR", nomClient);

	

	}
}
