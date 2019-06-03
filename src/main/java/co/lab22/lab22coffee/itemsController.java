package co.lab22.lab22coffee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.lab22.lab22coffee.entity.Item;


@Controller
public class itemsController {
	@Autowired
	ItemRepository i;
	
	@RequestMapping("/")
	public ModelAndView home() {
	  return new ModelAndView("index", "listOfItems",i.findAll());
	}
	
	@RequestMapping("/admin")
	public ModelAndView adminPage() {
	  return new ModelAndView("admin-page","listOfItems",i.findAll());
	}
	@RequestMapping("add")
	public ModelAndView getInfoNewItem() {	
		
		return new ModelAndView("add"); 
	}
	@RequestMapping("/add-item")
	public ModelAndView addNewItem(Item item) {	
		i.save(item);
		return new ModelAndView("redirect:/admin"); 
	}
	
	
	@RequestMapping("update-form")
	public ModelAndView updatenewItem(@RequestParam("id") String id) {
		
		return new ModelAndView("update", "id", id);
		
	}
	
	
	@RequestMapping("update-item")
	public ModelAndView updateItem(Item item) {
		
		i.save(item);
		return new ModelAndView("admin-page","listOfItems",i.findAll()); // / is the name of the view in this case home
	}
	@RequestMapping("delete")
	public ModelAndView deleteItem(@RequestParam("id") int id) {
		i.deleteById(id);
		return new ModelAndView("admin-page","listOfItems",i.findAll());
	}

}
