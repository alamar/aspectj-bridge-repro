package pvt.repro.aspectj;

public aspect PreFilterAspect extends AbstractMethodInterceptorAspect {

    // Pointcut for methods with @PreFilter annotation
    protected pointcut executionOfAnnotatedMethod() : execution(* *(..)) && @annotation(PreFilter);
}