package dmcs.classification;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.Pair;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


class Database {
    private final static char SEPARATOR_CHAR = ' ';

    final List<Pair<RealVector, Boolean>> data;
    private Mapper mapper;

    Database(String filePath) throws IOException {
        this.mapper = new Mapper();
        data = Files.lines(Path.of(filePath))
                .map(line -> StringUtils.split(line, SEPARATOR_CHAR))
                .peek(row -> {
                    if (row.length < 8) {
                        System.out.println(Arrays.toString(row));
                    }
                })
                .map(row -> Pair.of(toVector(row), row.length == 8 ? Boolean.valueOf(row[7]) : null))
                .collect(Collectors.toUnmodifiableList());
    }

    public List<Pair<RealVector, Boolean>> getData() {
        return this.data;
    }

    private RealVector toVector(String[] row) {
        String gender = row[2];
        String income = row[3];
        String education = row[4];
        String employment = row[5];
        String age = row[6];
        return new ArrayRealVector(new double[]{
                mapper.getGenderMapping(gender),
                mapper.getIncomeMapping(income),
                mapper.getEducationMapping(education),
                mapper.getEmploymentMapping(employment),
                mapper.getAgeMapping(age)
        });
    }
}
