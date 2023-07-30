import com.connection.DbConnection;
import java.sql.Connection;

public class Test{
	public static void main(String[] args) throws Exception {
		java.sql.Connection connect = DbConnection.Connectiontodatabase();
		System.out.println(connect);
	}
}