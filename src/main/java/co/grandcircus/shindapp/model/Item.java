package co.grandcircus.shindapp.model;

import java.util.ArrayList;
import java.util.List;

public class Item {

	private String foodName;
	private List <Ingredient> ingredients;
	private String whoIsBringingFood;
	private ArrayList <String> allergens;
	private String upc;
	private Integer participantID;
	private Integer id = 0;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getParticipantID() {
		return participantID;
	}
	public void setParticipantID(Integer participantID) {
		this.participantID = participantID;
	}
	public List<Ingredient> getIngredients() {
		return ingredients;
	}
	public void setIngredients(List<Ingredient> ingredients) {
		this.ingredients = ingredients;
	}
	public ArrayList<String> getAllergens() {
		return allergens;
	}
	public void setAllergens(ArrayList<String> allergens) {
		this.allergens = allergens;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	
	public String getWhoIsBringingFood() {
		return whoIsBringingFood;
	}
	public void setWhoIsBringingFood(String whoIsBringingFood) {
		this.whoIsBringingFood = whoIsBringingFood;
	}
	public String getUpc() {
		return upc;
	}
	public void setUpc(String upc) {
		this.upc = upc;
	}
	
	
}
	
	


