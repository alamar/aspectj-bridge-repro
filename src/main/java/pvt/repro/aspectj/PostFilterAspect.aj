package pvt.repro.aspectj;

public aspect PostFilterAspect extends AbstractMethodInterceptorAspect {

    // Pointcut for methods with @PostFilter annotation
    protected pointcut executionOfAnnotatedMethod() : execution(* *(..)) && @annotation(PostFilter);
}