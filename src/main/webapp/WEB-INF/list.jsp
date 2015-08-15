<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<body>

	<form action="list" method="post">
		<ul>
			<c:forEach items="${todos}" var="todo">

				<li><c:if test="${todo.done}">
						<strike>${todo.name}</strike>
					</c:if> <c:if test="${!todo.done}">
					${todo.name}
				</c:if>
					<button type="submit" name="id" value="${todo.id}">Done</button></li>
				<a href="update?id=${todo.id}">edit</a>

			</c:forEach>
		</ul>
	</form>



</body>
</html>