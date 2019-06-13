<%@ tag import="com.enums.PageType" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Setting PageType Values -->

<c:set var="homePage" value="<%=PageType.HOME.getContext() %>" />

<!-- Always Include -->
<link rel="stylesheet" type="text/css" href="${cssUrl }/site.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="${jsUrl }/site.js"></script> 

<!-- Including According to pageType -->

<c:choose>
	<c:when test="${pageType eq 'home'}">
		<link rel="stylesheet" type="text/css" href="${cssUrl }/homepage.css" />
		<script type="text/javascript" src="${jsUrl }/homepage.js"></script>		
	</c:when>
	
	<c:when test="${pageType eq 'search'}">
		<link rel="stylesheet" type="text/css" href="${cssUrl }/searchpage.css" />
		<script type="text/javascript" src="${jsUrl }/searchpage.js"></script>		
	</c:when>
</c:choose>

