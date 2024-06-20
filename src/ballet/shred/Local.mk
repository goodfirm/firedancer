$(call add-hdrs,fd_shred.h fd_deshredder.h)
$(call add-objs,fd_shred fd_deshredder,fd_ballet)
$(call make-unit-test,test_shred,test_shred,fd_ballet fd_util)
$(call run-unit-test,test_shred)
ifdef FD_HAS_HOSTED
$(call make-fuzz-test,fuzz_shred_parse,fuzz_shred_parse,fd_ballet fd_util)
endif
