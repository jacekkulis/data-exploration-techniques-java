import java.util.ArrayList;
import java.util.List;

public class Segment {
    private Point centroid;
    List<Point> group = new ArrayList<>();
    private Double innerDeviation;

    public Segment(Point centroid) {
        this.centroid = centroid;
    }

    public Point getCentroid() {
        return centroid;
    }

    public void setCentroid(Point centroid) {
        this.centroid = centroid;
    }

    public List<Point> getGroup() {
        return group;
    }

    public void setGroup(List<Point> grupa) {
        this.group = grupa;
    }

    public void addObjectToGroup(Point point) {
        group.add(point);
    }

    public Double getInnerDeviation() {
        return innerDeviation;
    }

    public void setInnerDeviation(Double innerDeviation) {
        this.innerDeviation = innerDeviation;
    }
}
