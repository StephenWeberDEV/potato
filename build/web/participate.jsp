<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to display items in List --%>
<nav id="menu">
    <ul>
        <li>Coins (<span class="count">${theUser.numCoins}</span>) </li>
        <li>Participants (<span class="count">${part}</span>) </li>
        <li>Participation (<span class="count">${theUser.numParticipation}</span>) </li>
        <li><br></li>
        <li><a href="userController?action=home">Home</a></li>
        <li><a href="studyController?action=play">Participate</a></li>
        <li><a href="studyController?action=studies">My Studies</a></li>
        <li><a href="recommend.jsp">Recommend</a></li>
        <li><a href="contact.jsp">Contact</a></li>
    </ul>
</nav>
<%-- Section to display studies and participate in that study--%>
<section class="participate">
    <ul>
        <li><h3><span id="studies">Studies</span></h3></li>
        <li>
            <h3>
                <span id="studies"><a id="reportHistory" href="studyController?action=reporth">Report History</a></span>
            </h3>
        </li>
    </ul>
    <%-- Display the studies in the table --%>
    <%-- Clicking on Participate button displays Question.jsp page where 
            you can rate the question--%>
    <table id="studies_table" >
        <%--Column Names --%>
        <tr>
            <th>Study Name</th>
            <th>Image</th>		
            <th>Question</th>
            <th>Action</th>
            <th>Report</th>
        </tr>
        <c:forEach items="${studies}" var="study">
            <tr>
                <td>${study.studyName}</td>
                <td><img src="${study.imageURL}" alt=""></td>
                <td>${study.question}</td>
                <form action="studyController" method="post">
                    <input type="hidden" name="StudyCode" value="${study.studyCode}"/>
                    <input type="hidden" name="ReporterEmail" value="${study.email}"/> 
                    <td>
                        <input type="submit" class="participate_button" name="action" value="participate" />
                    </td>
                    <td>
                        <input type="submit" class="confirm_button" name="action" value="report" />
                    </td>
                </form>
            </tr>
        </c:forEach>
    </table>

</section>
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>