<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Ninja Gold Game</title>
</head>

<body>
	<p>Your Gold: <c:out value="${gold}"/></p>

	<div class="building">
		<form method="post" action="/findGold">
		<input type="hidden" value="farm" name="building">
			<h3>Farm</h3>
			<p>(earns 10-20 gold)</p>
			<button>Find Gold</button>
		</form>
	</div>

	<div class="building">
		<form method="post" action="/findGold">
		<input type="hidden" value="cave" name="building">
			<h3>Cave</h3>
			<p>(earns 5-10 gold)</p>
			<button>Find Gold</button>
		</form>
	</div>
	
	<div class="building">
		<form method="post" action="/findGold">
		<input type="hidden" value="house" name="building">
			<h3>House</h3>
			<p>(earns 2-5 gold)</p>
			<button>Find Gold</button>
		</form>
	</div>
	
	<div class="building">
		<form method="post" action="/findGold">
		<input type="hidden" value="casino" name="building">
			<h3>Casino!</h3>
			<p>(earns/takes 0-50 gold)</p>
			<button>Find Gold</button>
		</form>
	</div>

	<h2>Activities</h2>
	<div class="activities">
		<c:forEach items="${activity}" var="act">
			<p class="${act.contains('lost')? 'red':'green'}">
				<c:out value="${act}" />
			</p>
		</c:forEach>
	</div>
</body>

</html>