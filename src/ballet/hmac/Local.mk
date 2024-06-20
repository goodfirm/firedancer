$(call add-hdrs,fd_hmac.h)
$(call add-objs,fd_hmac,fd_ballet)
$(call make-unit-test,test_hmac,test_hmac,fd_ballet fd_util)
$(call run-unit=test,test_hmac)
ifdef FD_HAS_HOSTED
$(call make-fuzz-test,fuzz_hmac,fuzz_hmac,fd_ballet fd_util)
endif
