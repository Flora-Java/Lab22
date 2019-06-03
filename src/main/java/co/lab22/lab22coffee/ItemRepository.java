package co.lab22.lab22coffee;

import org.springframework.data.jpa.repository.JpaRepository;

import co.lab22.lab22coffee.entity.Item;


public interface ItemRepository extends JpaRepository<Item, Integer>{

}
