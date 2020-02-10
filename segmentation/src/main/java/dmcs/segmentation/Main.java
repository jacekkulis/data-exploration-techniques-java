package dmcs.segmentation;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) throws IOException, URISyntaxException {
        if (args.length != 2) {
            throw new IllegalArgumentException("Two arguments required: k and number of iterations");
        }
        URL url = Main.class.getResource("/segmentacja.txt");
        Path path = Paths.get(url.toURI());

        Database database = new Database(path.toString());
        List<History> histories = new ArrayList<>();
        int k = Integer.parseInt(args[0]);
        for (int i = 1; i < k; i++ ) {
            KMeans kMeans = new KMeans(i, database);
            kMeans.setCollectHistory(true);
            kMeans.execute(Integer.parseInt(args[1]));
            histories.add(kMeans.getHistory());
        }
        System.out.println(histories);
        LineChart demo = new LineChart("", "", histories);
        demo.pack();
        demo.setVisible(true);
    }
}
