
/**
 *
 * @author lohith
 */

import java.sql.*;
import java.util.*;


public class Database  {

  	 String  jdbcDriver = "";
  	 String  dbURL = "";
	 String  username = "";
	 String  password = "";

	 Connection connection;

        //Load the Driver(Class.forName(jdbcDriver); where jdbcDriver  = "com.mysql.jdbc.Driver";)
        // Get the connection ( connection = DriverManager.getConnection(dbURL, username, password);)
        //prepare the statement or query ( PreparedStatement st  = connection.prepareStatement(query);)
        //close the connection (connection.close();)
  	public Database() throws SQLException, ClassNotFoundException
  	{

          jdbcDriver  = "com.mysql.jdbc.Driver";
          // jdbcDriver = "oracle.jdbc.driver.OracleDriver";

          dbURL = "jdbc:mysql://localhost:3307/cybcercafe";
          //dbURL= "jdbc:oracle:thin:@//server.local:1521/employee";
          username = "root";
          password = "root";




          Class.forName(jdbcDriver); //set Java database connectivity driver

          connection = DriverManager.getConnection(dbURL, username, password);

	}

	public ResultSet executeQuery(String query)throws SQLException
	{
	    PreparedStatement st  = connection.prepareStatement(query);
	    return st.executeQuery();
	}

	public int executeUpdate(String statement)throws SQLException
	{
	    PreparedStatement st  = connection.prepareStatement(statement);
	    return st.executeUpdate();
	}

	public void close()
	{
	    try
	    {
		connection.close();
	    }
	    catch (SQLException sqlException)
	    {
		//sqlException.printStackTrace();
	    	//connection = null;
	    }
	}
	protected void finalize()
	{
		close();
	}
}

