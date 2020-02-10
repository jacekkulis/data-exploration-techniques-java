package dmcs.classification;

import java.util.Map;

public class Mapper {
    private final Map<String, Double> genderMapper = Map.of("MEZCZYZNA", -1D, "KOBIETA", 1D);
    private final Map<String, Double> incomeMapper = Map.of("NISKIE", -1D, "SREDNIE", 0D, "WYSOKIE", 1D);
    private final Map<String, Double> educationMapper = Map.of("PODSTAWOWE", -1D, "SREDNIE", 0D, "WYZSZE", 1D);
    private final Map<String, Double> employmentMapper = Map.of(
            "BEZROBOTNY", -1D,
            "SAMOZATRUDNIENIE", -0.5D,
            "UMOWA_O_DZIELO", 0D,
            "UMOWA_NA_CZAS_OKRESLONY", 0.5D,
            "UMOWA_NA_CZAS_NIEOKRESLONY", 1D);
    private final Map<String, Double> ageMapper = Map.of(
            "od_20_do_30", -1D,
            "od_30_do_40", -0.5D,
            "od_40_do_50", 0D,
            "od_50_do_60", 0.5D,
            "powyzej_60", 1D);

    public Mapper(){

    }

    double getGenderMapping(String key){
        return this.genderMapper.get(key);
    }

    double getIncomeMapping(String key){
        return this.incomeMapper.get(key);
    }
    double getEducationMapping(String key){
        return this.educationMapper.get(key);
    }
    double getEmploymentMapping(String key){
        return this.employmentMapper.get(key);
    }
    double getAgeMapping(String key){
        return this.ageMapper.get(key);
    }
}
