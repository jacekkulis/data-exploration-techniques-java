package dmcs.classification;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

public class Main {
    private static String trainingDataPath;
    private static String testDataPath;

    public static void main(String[] args) throws IOException, URISyntaxException {
        if (args.length != 1) {
            throw new IllegalArgumentException("Required 1 argument for k parameter");
        }

        URL urlData = Main.class.getResource("/klasyfikacja.txt");
        Path path = Paths.get(urlData.toURI());
        trainingDataPath = path.toString();
        URL urlTest = Main.class.getResource("/test.txt");
        path = Paths.get(urlTest.toURI());
        testDataPath = path.toString();

        executeClassification(Integer.valueOf(args[0]));
    }

    private static void executeClassification(int k) throws IOException {
        Database trainingData = new Database(trainingDataPath);
        var data = new ArrayList<>(trainingData.getData());

        KnnClassifier knnClassifier = new KnnClassifier(data);

        Database testData = new Database(testDataPath);
        testData.getData().forEach(mappedVector ->
                System.out.println("[MAPPED VEC] : " + mappedVector.getLeft().toString() +
                        "\n[CLASSIFICATION OUTPUT] : Give credit = " + knnClassifier.classify(mappedVector.getLeft(), k)));
    }

}
