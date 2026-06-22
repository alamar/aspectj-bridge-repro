package pvt.repro.aspectj;

public aspect PostAuthorizeAspect extends AbstractMethodInterceptorAspect {

    // Pointcut for methods with @PostAuthorize annotation
    protected pointcut executionOfAnnotatedMethod() : execution(* *(..)) && @annotation(PostAuthorize);
}