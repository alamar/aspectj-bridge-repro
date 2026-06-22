package pvt.repro.aspectj;

abstract aspect AbstractMethodInterceptorAspect {
	protected abstract pointcut executionOfAnnotatedMethod();

	private MethodInterceptor securityInterceptor;

	Object around(): executionOfAnnotatedMethod() {
		if (this.securityInterceptor == null) {
			return proceed();
		}
		try {
			return this.securityInterceptor.invoke((Runnable) () -> proceed());
		} catch (Throwable t) {
			throwUnchecked(t);
			throw new IllegalStateException("Code unexpectedly reached", t);
		}
	}

	public void setSecurityInterceptor(MethodInterceptor securityInterceptor) {
		this.securityInterceptor = securityInterceptor;
	}

	private static void throwUnchecked(Throwable ex) {
		AbstractMethodInterceptorAspect.<RuntimeException>throwAny(ex);
	}

	@SuppressWarnings("unchecked")
	private static <E extends Throwable> void throwAny(Throwable ex) throws E {
		throw (E) ex;
	}
}