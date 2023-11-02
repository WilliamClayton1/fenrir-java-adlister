<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Pick your Favorite Color</title>
</head>
<body>
    
    <form action="favorite-color" method="post">
		<label for="color"> Pick your favorite color!
			<select name="color" id="color">
				<option value="red">Red</option>
				<option value="green">Green</option>
				<option value="blue">Blue</option>
			</select>
		</label>
		
		<input type="submit" value="Submit">
    </form>
  
</body>
</html>
