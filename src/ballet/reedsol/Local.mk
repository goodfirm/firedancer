$(call add-hdrs,fd_reedsol.h)
ifdef FD_HAS_GFNI
$(call add-asms,fd_reedsol_gfni_32,fd_reedsol)
endif
$(call add-objs,fd_reedsol,fd_reedsol)
$(call add-objs,fd_reedsol_encode_16,fd_reedsol)
$(call add-objs,fd_reedsol_encode_32,fd_reedsol)
$(call add-objs,fd_reedsol_encode_64,fd_reedsol)
$(call add-objs,fd_reedsol_encode_128,fd_reedsol)
$(call add-objs,fd_reedsol_recover_16,fd_reedsol)
$(call add-objs,fd_reedsol_recover_32,fd_reedsol)
$(call add-objs,fd_reedsol_recover_64,fd_reedsol)
$(call add-objs,fd_reedsol_recover_128,fd_reedsol)
$(call add-objs,fd_reedsol_recover_256,fd_reedsol)
$(call add-objs,fd_reedsol_pi,fd_reedsol)
$(call make-unit-test,test_reedsol,test_reedsol,fd_reedsol fd_util)
ifdef FD_HAS_HOSTED
$(call make-fuzz-test,fuzz_reedsol,fuzz_reedsol,fd_reedsol fd_util)
endif
