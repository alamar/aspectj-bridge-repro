package pvt.repro.aspectj;

@FunctionalInterface
public interface MethodInterceptor {

	Object invoke(Object invocation) throws Throwable;

}
