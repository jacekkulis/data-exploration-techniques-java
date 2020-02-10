package dmcs.segmentation;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.XYPlot;
import org.jfree.data.xy.DefaultXYDataset;

import javax.swing.*;
import java.awt.*;
import java.util.List;

public class LineChart extends JFrame {
    public LineChart(String applicationTitle, String chartTitle, List<History> history) {
        super(applicationTitle);
        // This will create the dataset
        DefaultXYDataset dataset1 = createDataset(extractCentroidSum(history), "centroid");
        DefaultXYDataset dataset2= createDataset(extractDistSumSeries(history), "distance");

        ChartPanel panelCentroid = new ChartPanel(createChart(dataset1, "Centroid"));
        ChartPanel panelDistance = new ChartPanel(createChart(dataset2, "Distance"));

        Dimension prefDim = new Dimension(400, 300);
        panelCentroid.setPreferredSize(prefDim);
        panelDistance.setPreferredSize(prefDim);


        setLayout(new FlowLayout());
        getContentPane().add(panelCentroid);
        getContentPane().add(panelDistance);
        setBounds(10, 10, 800, 500);
        setVisible(true);
    }

    private DefaultXYDataset createDataset(double[][] series, String seriesName) {
        DefaultXYDataset result = new DefaultXYDataset();
        result.addSeries(seriesName, series);
        return result;

    }

    private double[][] extractDistSumSeries(List<History> history) {
        double[][] res = new double[2][];
        res[0] = new double[history.size()];
        res[1] = new double[history.size()];
        for (int i = 0; i < history.size(); i++) {
            res[0][i] = (double) i;
            res[1][i] = history.get(i).getDistanceSum();
        }
        return res;
    }

    private double[][] extractCentroidSum(List<History> history) {
        double[][] res = new double[2][];
        res[0] = new double[history.size()];
        res[1] = new double[history.size()];
        for (int i = 0; i < history.size(); i++) {
            res[0][i] = (double) i;
            res[1][i] = history.get(i).getCentroidSum();
        }
        return res;
    }

    /**
     * Creates a chart
     */
    private JFreeChart createChart(DefaultXYDataset dataset, String title) {
        JFreeChart chart = ChartFactory.createScatterPlot(
                title,                  // chart title
                "X-Axis",
                "Y-Axis",
                dataset                // data

        );

        chart.setBorderVisible(true);

        XYPlot plot = (XYPlot) chart.getPlot();
        plot.setBackgroundPaint(new Color(255,228,196));
        return chart;
    }
}
