package models;


//CREATE TABLE Customers(ID varchar(255), email varchar(255),password varchar(255), PRIMARY KEY(ID,email));
import java.sql.*;



// a foreign key constraint fails (`countyinn`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `items` (`ID`))
public class DatabaseConn {

    public Connection createConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/countyInn", "root", "");
        return con;
    }

    public boolean InsertUser(String user_id, String email, String password) throws SQLException, ClassNotFoundException {
        //Email and password inserted into the database
        PreparedStatement ps = createConnection().prepareStatement("INSERT INTO customers VALUES(?,?,?)");
        ps.setString(1, user_id);
        ps.setString(2, email);
        ps.setString(3, password);
        int result = ps.executeUpdate();
        if (result >= 1) {
            return true;
        } else {
            return false;
        }
    }

    //TODO: change to a prepaired statement
    public user GetUserByEmail(String email, String password) throws SQLException, ClassNotFoundException {
        String query = "SELECT * FROM Customers WHERE email = " + email;
        user u = new user("EMPTY", "EMPTY");
        try (Statement stmt = createConnection().createStatement()) {
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String email_result = rs.getString("email");
                String password_result = rs.getString("password");
                u.email = email_result;
                u.password = password_result;
            }
        } catch (SQLException e) {
        }
        return u;
    }

    public boolean CreateOrder(String email, String orderID) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = createConnection().prepareStatement("INSERT INTO Orders VALUES(?,?)");
        ps.setString(1, orderID);
        ps.setString(2, email);
        int result = ps.executeUpdate();
        if (result >= 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean CheckOrderById(String id) throws ClassNotFoundException, SQLException {
        PreparedStatement ps = createConnection().prepareStatement("Select * from Orders WHERE OrderID = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        int rowcount = 0;
        if (rs.next()) {
            return true;
        } else {
            return false;
        }
    }
    
    public item[] GetAllItems() throws ClassNotFoundException, SQLException {
        item items[] = new item[6];
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM items");
        ResultSet rs = ps.executeQuery();
        int index = 0;
        while (rs.next()) {
            String id = rs.getString("ID");
            String name = rs.getString("name");
            String des = rs.getString("des");
            String type = rs.getString("type");
            item i = new item(name, type, des, id);
            items[index] = i;
            index++;
        }
        return items;
    }
}

//Migrations
//CREATE TABLE Customers
//(ID varchar(255),email varchar(255), password varchar(255), PRIMARY KEY(ID));
//TYPE IS ROOM OR conference
//create table items (ID varchar(255) , name varchar(255) , des varchar(255), type varchar(255));
//CREATE TABLE CustomerOrder(Order varchar(255),CustomerID varchar(255))
//MariaDB [countryinn]> INSERT INTO items VALUES ("1","Bliss room","Coolest room ever!!!","room")
//    -> ;CR
//Query OK, 1 row affected (0.554 sec)
//
//MariaDB [countryinn]> INSERT INTO items VALUES ("2","Basic","Basic conference room","conference");
//Query OK, 1 row affected (0.039 sec)w
//
//MariaDB [countryinn]> INSERT INTO items VALUES ("3","Basic 2","Basic conference room","conference");
//Query OK, 1 row affected (0.199 sec)
//
//MariaDB [countryinn]> INSERT INTO items VALUES ("4","Basic Room 2","Basic conference room","room");
//Query OK, 1 row affected (0.121 sec)
//
//MariaDB [countryinn]> INSERT INTO items VALUES ("5","Basic Room 22","Basic conference room","room");
//Query OK, 1 row affected (0.195 sec)
//
//MariaDB [countryinn]> INSERT INTO items VALUES ("6","The greatest conference room!","Greatest conference room","conference");
//CREATE TABLE Orders(
//    OrderID varchar(255),
//    CustomerEmail varchar(255),
//    FOREIGN KEY (OrderID) REFERENCES items(ID),
//    FOREIGN KEY (CustomerEmail) REFERENCES customers(email)
//
//)
