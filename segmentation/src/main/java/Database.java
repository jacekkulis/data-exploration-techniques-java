import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

public class Database {
    private String path;

    public Database(String s) {
        this.path = s;
    }

    List<Point> readDataFromDatabase() throws IOException, URISyntaxException {

        URL url = Main.class.getResource(path);
        Path path = Paths.get(url.toURI());
        return Files.lines(Path.of(path.toString()))
                .map(line -> line.substring(1, line.length() - 1))
                .map(line -> StringUtils.split(line, ","))
                .map(Point::convertToDouble)
                .map(Point::new)
                .collect(Collectors.toUnmodifiableList());


//            Statement statement = conn.createStatement();
//            ResultSet resultSet = statement.executeQuery("SELECT * FROM zad3.punkt");
//            while (resultSet.next()) {
//                int id = resultSet.getInt(1);
//                Point point = new Point(id);
//                points.add(point);
//            }
//            PreparedStatement preparedStatement = conn.prepareStatement("SELECT valuelist FROM zad3.punkt_valuelist where punkt_id = ?");
//            points.forEach(point -> {
//                try {
//                    preparedStatement.setInt(1, point.getId());
//                    ResultSet resultSet1 = preparedStatement.executeQuery();
//                    while (resultSet1.next()) {
//                        point.addValueToList(resultSet1.getDouble(1));
//                    }
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            });


    }
}