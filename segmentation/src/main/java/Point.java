import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.Stream;

public class Point {

    private Integer id;

    private List<Double> values = new ArrayList<Double>();

    private Double currentDistance;

    private Segment currentSegment;

    private Segment previousSegment;

    public Point() {
    }

    public Point(Integer id) {
        this.id = id;
    }

    public Point(double[] doubles) {
        this.values = DoubleStream.of(doubles).boxed().collect(Collectors.toCollection(ArrayList::new));
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Double> getValues() {
        return values;
    }

    public void setValues(List<Double> values) {
        this.values = values;
    }

    public void addValueToList(double value) {
        values.add(value);
    }

    public static double[] convertToDouble(String[] row) {
        return Stream.of(row).map(Double::parseDouble).mapToDouble(p -> p).toArray();
    }

    public Double getCurrentDistance() {
        return currentDistance;
    }

    public void setCurrentDistance(Double currentDistance) {
        this.currentDistance = currentDistance;
    }

    public Segment getCurrentSegment() {
        return currentSegment;
    }

    public void setCurrentSegment(Segment currentSegment) {
        this.currentSegment = currentSegment;
    }

    public void setPreviousSegment() {
        this.previousSegment = currentSegment;
    }

    public boolean hasChangedSegment() {
        return previousSegment != currentSegment;
    }
}
