package pvt.repro.aspectj;

@FunctionalInterface
public interface AspectJMethodSecurityInterceptor {

	Object invoke(Object invocation) throws Throwable;

}
