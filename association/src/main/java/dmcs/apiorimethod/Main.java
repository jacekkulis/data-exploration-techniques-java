package dmcs.apiorimethod;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;

public class Main {

    private static int ELEMENTS = 4;

    public static void main(String[] args) throws IOException, URISyntaxException {
        URL url = Main.class.getResource("/data.txt");
        Path path = Paths.get(url.toURI());
        Database database = Database.forFile(path);
        ApioriMethod apiori = ApioriMethod.ofDatabase(database);

        apiori.execute(ELEMENTS);
        //display sets that meet our assumptions
        apiori.getSets().forEach(set -> System.out.println("[OUTPUT SET]: [" + set.stream().collect(Collectors.joining(",")) + "]"));
    }
}
