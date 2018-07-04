

<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gps","root","harshita");    
        PreparedStatement pst = conn.prepareStatement("Select username,password from login1 where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())  {         
        	RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
    		rd.forward(request, response);   }     
        else{
           out.println("Invalid login credentials");   }         
   }
   catch(Exception e){       
       out.println(e);       
   }      
%>