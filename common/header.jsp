<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- JSTL 标签 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ taglib uri="http://www.ectable.org" prefix="ect" %>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display"%>

<!-- displaytag 标签 -->
<!--%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %-->

<c:set var="dateFormatDisplay">yyyy-MM-dd</c:set>
<c:set var="timeFormatDisplay">yyyy-MM-dd HH:mm:ss</c:set>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
