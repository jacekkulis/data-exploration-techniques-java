import com.google.common.collect.Sets;
import org.knowm.xchart.SwingWrapper;
import org.knowm.xchart.XYChart;
import org.knowm.xchart.XYChartBuilder;
import org.knowm.xchart.XYSeries;
import org.knowm.xchart.style.Styler;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

public class Main {

    private static List<Point> points = new ArrayList<>();
    private static final int k = 10;
    private static List<Segment> segments = new ArrayList<>();

    public static void main(String[] args) {
        Database db = new Database("/segmentacja.txt");
        try {
            points = db.readDataFromDatabase();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }


        Map<Double, Double> innerDeviations = new HashMap<>();
        Map<Double, Double> outerDeviations = new HashMap<>();
        for (int i = 2; i < k; i++) {
            ThreadLocalRandom.current().ints(0, points.size()).distinct().limit(i).forEach(rand -> {
                Point centroid = points.get(rand);
                segments.add(new Segment(centroid));
            });
            do {
                segments.forEach(segment -> segment.setGroup(new ArrayList<>()));
                points.forEach(Main::calculateDistance);
                segments.forEach(Main::calculateNewCentroid);
            } while (shouldStop());
            segments.forEach(Main::calculateInnerDeviations);
            Set<Set<Point>> combinations = Sets.combinations(segments.stream().map(Segment::getCentroid).collect(Collectors.toSet()), 2);
            double outerDeviation = 0;
            for (Set<Point> combination : combinations) {
                List<Point> centroidsPair = new ArrayList<>(combination);
                Point firstPoint = centroidsPair.get(0);
                Point secondPoint = centroidsPair.get(1);
                outerDeviation += calculateDistanceBetweenPoints(firstPoint.getValues(), secondPoint.getValues());
            }
            innerDeviations.put((double) i, segments.stream().mapToDouble(Segment::getInnerDeviation).sum());
            outerDeviations.put((double) i, outerDeviation);
            segments = new ArrayList<>();
        }
        printChart("wc(c)", innerDeviations);
        printChart("bc(c)", outerDeviations);
    }

    private static void printChart(String title, Map<Double, Double> deviations) {
        double[][] initdata = getData(deviations);

        // Create Chart
        XYChart chart = new XYChartBuilder().width(800).height(600).xAxisTitle("Segments").yAxisTitle("Grade").build();
        chart.getStyler().setDefaultSeriesRenderStyle(XYSeries.XYSeriesRenderStyle.Scatter);
        chart.getStyler().setChartTitleVisible(false);
        chart.getStyler().setLegendPosition(Styler.LegendPosition.InsideSW);
        chart.getStyler().setMarkerSize(16);
        chart.addSeries("Grades", initdata[0], initdata[1]);
        // Show it
        final SwingWrapper<XYChart> sw = new SwingWrapper<>(chart);
        sw.displayChart(title);
    }

    private static double[][] getData(Map<Double, Double> grades) {
        Set<Map.Entry<Double, Double>> keys = grades.entrySet();
        double[] xData = new double[keys.size()];
        double[] yData = new double[keys.size()];
        int i = 0;
        for (Map.Entry<Double, Double> key : keys) {
            xData[i] = key.getKey();
            yData[i] = key.getValue();
            i++;
        }

        return new double[][]{xData, yData};
    }

    private static void calculateInnerDeviations(Segment segment) {
        double innerDeviation = 0d;
        for (Point point : segment.getGroup()) {
            innerDeviation += calculateDistanceBetweenPoints(segment.getCentroid().getValues(), point.getValues());
        }
        segment.setInnerDeviation(innerDeviation);
    }

    private static boolean shouldStop() {
        for (Point point : points) {
            if (point.hasChangedSegment()) {
                return true;
            }
        }
        return false;
    }

    private static void calculateNewCentroid(Segment segment) {
        Point newCentroid = new Point();
        double pointValue = 0;
        for (int i = 0; i < 5; i++) {
            for (Point point : segment.getGroup()) {
                pointValue += point.getValues().get(i);
            }
            pointValue = pointValue / segment.getGroup().size();
            newCentroid.getValues().add(pointValue);
        }
        segment.setCentroid(newCentroid);
    }

    private static void calculateDistance(Point point) {
        if (null != point.getCurrentDistance()) {
            point.setCurrentDistance(null);
            point.setPreviousSegment();
        }
        segments.forEach(segment -> {
            double distance = calculateDistanceBetweenPoints(segment.getCentroid().getValues(), point.getValues());
            if (null == point.getCurrentDistance()) {
                point.setCurrentDistance(distance);
                point.setCurrentSegment(segment);
            } else {
                if (distance < point.getCurrentDistance()) {
                    point.setCurrentDistance(distance);
                    point.setCurrentSegment(segment);
                }
            }
        });
        point.getCurrentSegment().addObjectToGroup(point);
    }

    private static double calculateDistanceBetweenPoints(List<Double> firstPoint, List<Double> secondPoint) {
        double distance = 0;
        for (int i = 0; i < secondPoint.size(); i++) {
            distance += Math.pow(firstPoint.get(i) - secondPoint.get(i), 2);
        }
        distance = Math.sqrt(distance);
        return distance;
    }
}
