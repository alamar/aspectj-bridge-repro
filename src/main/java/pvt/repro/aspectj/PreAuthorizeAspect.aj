package pvt.repro.aspectj;

public aspect PreAuthorizeAspect extends AbstractMethodInterceptorAspect {

    // Pointcut for methods with @PreAuthorize annotation
    protected pointcut executionOfAnnotatedMethod() : execution(* *(..)) && @annotation(PreAuthorize);
}