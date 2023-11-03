<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Pizza</title>
</head>
<body>

  <form method="GET" action="/pizza-order">
    <label for="crustType">Pick a type of crust:
      <select id="crustType" name="crustType">
        <option selected disabled>Select One</option>
        <option name="New York Style">New York Style</option>
        <option name="Chicago">Chicago Style</option>
        <option name="Stuffed Crust">Stuffed Crust</option>
      </select>
    </label>
    
    <label for="sauceType">Pick a type of sauce:
      <select id="sauceType" name="sauceType">
        <option selected disabled>Select One</option>
        <option name="Tomato Sauce">Tomato Sauce</option>
        <option name="Alfredo Sauce">Alfredo Sauce</option>
        <option name="BBQ Sauce">BBQ Sauce</option>
      </select>
    </label>
    
    <label for="sauceType">What size pizza do you want:
      <select id="pizzaSize" name="pizzaSize">
        <option selected disabled>Select One</option>
        <option name="small">Small</option>
        <option name="medium">Medium</option>
        <option name="large">Large</option>
      </select>
    </label>
    
    <p>Pick your toppings:</p>
    <label for="cheese">Cheese
      <input type="checkbox" id="cheese" name="toppings" value="cheese">
    </label><br>
    <label for="pepperoni">Pepperoni
      <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
    </label><br>
    <label for="sausage">Sausage
      <input type="checkbox" id="sausage" name="toppings" value="sausage">
    </label><br>
    <label for="mushrooms">Mushrooms
      <input type="checkbox" id="mushrooms" name="toppings" value="mushrooms">
    </label><br>
    <label for="olives">Olives
      <input type="checkbox" id="olives" name="toppings" value="olives">
    </label><br>
    
    <br>
    
    <label for="address">Where you like your pizza delivered?
      <input id="address" name="address" type="text">
    </label>
    
    <input type="submit">
  </form>
 

</body>
</html>
