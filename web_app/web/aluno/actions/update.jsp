<%@ page import="br.edu.usf.ads.web.models.Aluno" %>
<%@ page import="br.edu.usf.ads.web.dao.AlunoDAO" %>
<%@ page import="com.google.common.base.Strings" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    try {
        if (!Strings.isNullOrEmpty(request.getParameter("id")) && !Strings.isNullOrEmpty(request.getParameter("ra")) && !Strings.isNullOrEmpty(request.getParameter("nome"))) {
            Aluno a = new Aluno();
            a.setId(Integer.valueOf(request.getParameter("id")));
            a.setRa(request.getParameter("ra"));
            a.setNome(request.getParameter("nome"));

            AlunoDAO.update(a);
        }
        response.sendRedirect("../index.jsp");
    } catch(Exception e) {
        out.print("Erro ao atualizar!");
    }
%>
</body>
</html>
