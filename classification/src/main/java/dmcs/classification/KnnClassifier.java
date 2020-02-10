package dmcs.classification;

import org.apache.commons.lang3.tuple.Pair;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.ml.distance.DistanceMeasure;
import org.apache.commons.math3.ml.distance.EuclideanDistance;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

class KnnClassifier {
    private List<Pair<RealVector, Boolean>> trainingData;
    private DistanceMeasure distanceMeasure = new EuclideanDistance();

    KnnClassifier(List<Pair<RealVector, Boolean>> trainingData) {
        this.trainingData = trainingData;
    }

    boolean classify(RealVector data, int k) {
        var kNear = trainingData.stream()
                .map(row -> Pair.of(row, distanceMeasure.compute(data.toArray(), row.getLeft().toArray())))
                .sorted(Comparator.comparing(Pair::getRight))
                .limit(k)
                .map(Pair::getLeft)
                .collect(Collectors.toList());
        return vote(kNear);
    }

    private boolean vote(List<Pair<RealVector, Boolean>> kNear) {
        int trueVotes = 0;
        int falseVotes = 0;

        for (var row : kNear) {
            if (row.getRight()) {
                trueVotes++;
            } else {
                falseVotes++;
            }
        }
        int winningVotes = trueVotes;
        System.out.println("TRUE: " + trueVotes + " FALSE: " + falseVotes + " RATIO: " + (double)winningVotes/kNear.size());
        return trueVotes > falseVotes;
    }
}
