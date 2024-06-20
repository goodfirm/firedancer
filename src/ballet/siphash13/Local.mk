$(call add-hdrs,fd_siphash13.h)
$(call add-objs,fd_siphash13,fd_ballet)
$(call make-unit-test,test_siphash13,test_siphash13,fd_ballet fd_util)
$(call run-unit-test,test_siphash13)
ifdef FD_HAS_HOSTED
$(call make-fuzz-test,fuzz_siphash13,fuzz_siphash13,fd_ballet fd_util)
endif
