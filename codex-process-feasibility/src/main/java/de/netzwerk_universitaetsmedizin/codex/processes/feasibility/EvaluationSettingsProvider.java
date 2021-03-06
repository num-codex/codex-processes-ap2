package de.netzwerk_universitaetsmedizin.codex.processes.feasibility;

/**
 * Provides different settings required for evaluating a measure.
 */
public interface EvaluationSettingsProvider {

    /**
     * Returns a string representation of the evaluation strategy.
     *
     * @return Representation of the evaluation strategy.
     */
    String evaluationStrategyRepresentation();

    /**
     * Returns whether evaluation result obfuscation is enabled.
     *
     * @return True if evaluation result obfuscation is enabled and false otherwise.
     */
    boolean evaluationResultObfuscationEnabled();

}
