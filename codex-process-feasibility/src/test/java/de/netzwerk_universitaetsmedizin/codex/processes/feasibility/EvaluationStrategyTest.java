package de.netzwerk_universitaetsmedizin.codex.processes.feasibility;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;

public class EvaluationStrategyTest {

    @Test
    public void testFromStrategyRepresentation_UnknownStrategy() {
        assertThrows(IllegalArgumentException.class, () -> EvaluationStrategy.fromStrategyRepresentation("unknown"));
    }

    @Test
    public void testFromStrategyRepresentation_StrategyCaseDoesNotMatter() {
        var evaluationStrategy = EvaluationStrategy.fromStrategyRepresentation("strUCtured-QUerY");
        assertEquals(EvaluationStrategy.STRUCTURED_QUERY, evaluationStrategy);
    }

    @Test
    public void testFromStrategyRepresentation() {
        var evaluationStrategy = EvaluationStrategy.fromStrategyRepresentation("cql");
        assertEquals(EvaluationStrategy.CQL, evaluationStrategy);
    }
}
