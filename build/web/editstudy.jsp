<%-- 
    Document   : main
    Created on : Sep 19, 2015, 9:17:56 PM
    Author     : Suman
--%>
<%@page import="Business.Study"%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display Page Name --%>
<h3 id="page_name">Editing a study</h3>
<%-- Code to go back to Main page  --%>
<a href="main.jsp" id="back_to_page">&laquo;Back to the Main Page</a>
<%-- Section to input study details --%>
<section id="newstudy_form">
    <form action="studyController" method="post">
        <input type="hidden" name="action" value="update"/>
        <input type="hidden" name="StudyCode" value="${study.studyCode}"/>
        <p>Study Code: ${study.studyCode}</p>
        <label>Study Name *</label>
        <input type="text" name="studyName" value="${study.studyName}" /><br>
        <label>Question Text *</label>
        <input type="text" name="question" value="${study.question}"/><br>
        <label>Image *</label>
        <button type="button">Browse</button>
        <br>
        <br>
        <label># Participants *</label>  
        <input type="text" name="participants" value="${study.requestedParticipants}"/><br>
        <label># Answers * </label>
        <select name="numParticipants">
            <option value="" selected>0</option>
            <option value="one">1</option>
            <option value="two">2</option>
            <option value="three">3</option>
            <option value="four">4</option>
            <option value="five">5</option>
        </select>
        <div class="clear"></div>
        <br/>
        <label>Answer 1*</label>
        <input type="text" name="answer" >
        <label>Answer 2*</label>
        <input type="text" name="answer" >
        <label>Answer 3*</label>
        <input id="three" type="text" name="answer" >
        <br/><br/>
        <label>Description *</label>  
        <textarea name="description" value="${study.description}"></textarea><br>
        <button type="submit"  id="submit_button">Submit</button>
    </form>
</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>