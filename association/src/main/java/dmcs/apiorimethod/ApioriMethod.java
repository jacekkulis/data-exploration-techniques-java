package dmcs.apiorimethod;

import org.apache.commons.math3.util.Combinations;

import java.util.*;
import java.util.stream.Collectors;

public class ApioriMethod {

    private static final float THRESHOLD_SUPPORT = 10f;

    private Database database;

    private List<List<String>> sets;

    private ApioriMethod(Database database) {
        this.database = database;
    }

    static ApioriMethod ofDatabase(Database database) {
        return new ApioriMethod(database);
    }

    void execute(int k) {
        System.out.println("Starting with threshold support " + THRESHOLD_SUPPORT);

        //first iteration - get sets with frequency that are valid with threshold
        sets = frequencyFiltering();

        System.out.println("[AVG THRESHOLD_SUPPORT] = " + sets.stream().map(this::getFrequency)
                .mapToDouble(p -> p)
                .average()
                .getAsDouble());

        for (int i = 1; i < k; i++) {
            apioriGen();
            System.out.println("[AVG THRESHOLD_SUPPORT] = " + sets.stream().map(this::getFrequency)
                    .mapToDouble(p -> p)
                    .average()
                    .getAsDouble());
        }
    }

    private void apioriGen() {
        //make pairs
        Combinations combinations = new Combinations(sets.size(), 2);
        List<List<String>> newSets = new ArrayList<>();

        //iterate through pairs and append if frequency is greater or even frequency threshold
        for (int[] combination : combinations) {
            appendIfContains(sets.get(combination[0]), sets.get(combination[1]))
                    .filter(set -> getFrequency(set) >= THRESHOLD_SUPPORT)
                    .ifPresent(newSets::add);
        }

        sets = newSets;
    }

    private List<List<String>> frequencyFiltering() {
        return database.data.stream()
                .flatMap(Collection::stream)
                .distinct()
                .map(Collections::singletonList)
                .filter(set -> getFrequency(set) >= THRESHOLD_SUPPORT)
                .collect(Collectors.toList());
    }

    float getFrequency(List<String> set) {
        float l = (float) database.data
                .stream()
                .filter(t -> t.containsAll(set))
                .count();
        l = l / database.data.size();
        l *= 1000;
        // System.out.println(l);
        return l;
    }

    private Optional<List<String>> appendIfContains(List<String> one, List<String> second) {
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
