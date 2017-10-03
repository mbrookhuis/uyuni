<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://rhn.redhat.com/rhn" prefix="rhn" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html:html >
<body>
<%@ include file="/WEB-INF/pages/common/fragments/systems/system-header.jspf" %>
<script


    <h2><bean:message key="delete_confirm.jsp.header"/></h2>
    <bean:message key="delete_confirm.jsp.summary" arg0="${sid}" />

    <hr/>

    <script src="/javascript/manager/delete-system.bundle.js" type="text/javascript"></script>
<%--
    <html:form method="post" action="/systems/details/DeleteConfirm.do?sid=${sid}">
      <rhn:csrf />
      <html:hidden property="submitted" value="true"/>
        <div class="form-horizontal">
            <div class="form-group">
                <div class="col-md-12">
                    <html:submit property="button" styleClass="btn btn-danger">
                        <bean:message key="delete_confirm.jsp.button"/>
                    </html:submit>
                </div>
            </div>
        </div>
    </html:form>
--%>
</body>
</html:html>
