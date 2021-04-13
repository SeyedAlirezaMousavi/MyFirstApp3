package tehran;


import java.sql.*;

public class PersonDA {
    private Connection connection ;
    private PreparedStatement preparedStatement ;

    public PersonDA() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver") ;
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
                "A_MOUSAVI","mou.0101852108007") ;


    }
    public void insert(PersonTO personTO) throws  Exception {
        preparedStatement = connection.prepareStatement("insert into person(firstname,lastname,nationalid,birthday) " +
                "values(?,?,?,?)") ;
        preparedStatement.setString(1,personTO.getFname());
        preparedStatement.setString(2,personTO.getLname());
        preparedStatement.setString(3,personTO.getNationalId());
        preparedStatement.setLong(4,personTO.getBirthdate());
        preparedStatement.executeUpdate() ;
    }
    public void close()  throws  Exception {
        preparedStatement.close();
        connection.close();
    }
}
