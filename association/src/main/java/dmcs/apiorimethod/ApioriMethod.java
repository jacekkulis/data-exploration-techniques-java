package dmcs.apiorimethod;

import org.apache.commons.math3.util.Combinations;
import java.util.*;
import java.util.stream.Collectors;

public class ApioriMethod {

    private static final float FREQUENCY = 1f;

    private Database database;

    private List<List<String>> sets;

    private ApioriMethod(Database database) {
        this.database = database;
    }

    public static ApioriMethod ofDatabase(Database database) {
        return new ApioriMethod(database);
    }

    public void execute(int k) {
        //first iteration - get sets with frequency
        sets = frequencyTest();

        System.out.println("[AVG FREQUENCY] = " + sets.stream().map(this::getFrequency)
                .mapToDouble(p -> p)
                .average()
                .getAsDouble());

        for (int i = 1; i < k; i++) {
            apioriGen();
            System.out.println("[AVG FREQUENCY] = "  + sets.stream().map(this::getFrequency)
                    .mapToDouble(p -> p)
                    .average()
                    .getAsDouble());
        }
    }

    private void apioriGen() {
        //create pairs
        Combinations combinations = new Combinations(sets.size(), 2);
        List<List<String>> newSets = new ArrayList<>();

        for (int[] combination : combinations) {
            connectIfContains(sets.get(combination[0]), sets.get(combination[1]))
                    .filter(set -> getFrequency(set) >= FREQUENCY)
                    .ifPresent(newSets::add);
        }

        sets = newSets;
    }

    private List<List<String>> frequencyTest() {
        return database.data.stream()
                .flatMap(Collection::stream)
                .distinct()
                .map(Collections::singletonList)
                .filter(set -> getFrequency(set) >= FREQUENCY)
                .collect(Collectors.toList());
    }

    public float getFrequency(List<String> set) {
        float l = (float) database.data.stream()
                .filter(transaction -> transaction.containsAll(set))
                .count()
                / database.data.size();
        return l * 100;
    }

    private Optional<List<String>> connectIfContains(List<String> one, List<String> second) {
        if (one.size() != second.size()) {
            throw new RuntimeException();
        }


        for (int i = 0; i < one.size() - 1; i++) {
            if (!one.get(i).equals(second.get(i))) {
                return Optional.empty();
            }
        }

        List<String> result = new ArrayList<>(one);
        result.addAll(second);
        return Optional.of(result.stream().distinct().sorted().collect(Collectors.toList()));
    }

    public List<List<String>> getSets() {
        return sets;
    }

}
