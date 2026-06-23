https://github.com/eclipse-aspectj/aspectj/issues/357

Just run
./gradlew build
./gradlew checkBridgeMethods

and the result is

```
=== Bridge Method Analysis ===

Checking: PreAuthorizeAspect
  Has bridge setSecurityInterceptor: NO

Checking: AbstractMethodInterceptorAspect
  Has bridge setSecurityInterceptor: NO

Checking: PostAuthorizeAspect
  Has bridge setSecurityInterceptor: NO

Checking: PostFilterAspect
  Has bridge setSecurityInterceptor: YES

=== Detailed Method Analysis ===

Methods in PreAuthorizeAspect.class:

Methods in AbstractMethodInterceptorAspect.class:
  public void setSecurityInterceptor(pvt.repro.aspectj.MethodInterceptor);

Methods in PostAuthorizeAspect.class:

Methods in PostFilterAspect.class:
  public void setSecurityInterceptor(pvt.repro.aspectj.MethodInterceptor);
```

This looks like a minor issue as of now, but it will make builds irreproducible.
