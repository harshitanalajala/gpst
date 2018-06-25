<%@ page import ="java.sql.*" %>
<%
    try{
    	String name = request.getParameter("name"); 
    	String username = request.getParameter("username");   
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile"); 
        String vehicle= request.getParameter("vehicle");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gps","root","harshita");    
        PreparedStatement pst = conn.prepareStatement("insert into login1 values (? ,? ,? ,?,?)");
        pst.setString(1, name);
        pst.setString(2, username);
        pst.setString(3, password);
        pst.setString(4, mobile);
        pst.setString(5,vehicle);
        int m = pst.executeUpdate();                        
        if(m!=0){           
            out.println("succesfully registered"); 
        	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        	rd.forward(request, response);
        }
   }
   catch(Exception e){       
       out.println(e);       
   }      
%>