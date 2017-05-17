<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:genericpage>
    <jsp:body>
        <jsp:include page="navbar.jsp" />
        <div class="content">   
            <div class="input-group">
                <form:form class="form-inline" method="POST" action="${contextPath}/search">
            
	                <input type="text" name="search_expr" class="form-control" placeholder="Search for...">
	                
	                    <button class="btn btn-default" type="submit">Search</button>
	                
                </form:form>
        </div>      
        <br>            
            <c:forEach items="${AllQuestions}" var="question">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="info">
                            <div class="right"><c:out value="${question.getUser().getUsername()}" /></div>                            
                        </div>
                        <h3>
                            <c:out value="${question.topic}" />
                        </h3>
                        <p>
                            <c:out value="${question.getBody()}" />
                        </p>
                        <div class="more"><a href="Question/${question.id}">Read more</a></div>
                    </div>
                </div>                
            </c:forEach>
        </div>
    </jsp:body>
</t:genericpage>