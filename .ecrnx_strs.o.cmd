savedcmd_/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o := gcc-12 -Wp,-MMD,/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/.ecrnx_strs.o.d -nostdinc -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -I./ubuntu/include -include ./include/linux/compiler_types.h -D__KERNEL__ -fmacro-prefix-map=./= -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=none -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -mharden-sls=all -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=zero -fno-stack-clash-protection -fzero-call-used-regs=used-gpr -pg -mrecord-mcount -mfentry -DCC_USING_FENTRY -falign-functions=16 -fno-strict-overflow -fno-stack-check -fconserve-stack -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-restrict -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -g -gdwarf-5 -DCONFIG_6600_HAL -DCONFIG_ECRNX_DEBUGFS -DCONFIG_ECRNX_UM_HELPER_DFLT=\""/dini/dini_bin/ecrnx_umh.sh"\" -DCONFIG_CEVA_RTOS -DCONFIG_ECRNX_DBG -DCONFIG_ECRNX_DBG_MASK=0x10800F -DCONFIG_ECRNX_KERNEL_VERSION=6.8 -DNX_VIRT_DEV_MAX=3 -DNX_REMOTE_STA_MAX=4 -DNX_MU_GROUP_MAX=62 -DNX_TXDESC_CNT=4 -DNX_TX_MAX_RATES=4 -DNX_CHAN_CTXT_CNT=3 -DECRNX_VERS_MOD=\"ECR6600U_V1.1.0B05P06\" -DECRNX_VERS_BANNER=\"wlan_ecr6600-ECR6600U_V1.1.0B05P06-build\:"2025-10-26 19:24:55 CST"\" -DCONFIG_FW_PATH=\""/lib/firmware/"\" -DCONFIG_ECRNX_FULLMAC -I/home/user0/.WORKDIR/eswin_wifi/eswin_6600u -I/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/fullmac -I/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/eswin_port/ -I/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/sdio/ -DCONFIG_ECRNX_RADAR -DCONFIG_USER_MAX=1 -DNX_TXQ_CNT=5 -DCONFIG_ECRNX_DEBUGFS_CUSTOM -DCONFIG_ECRNX_ESWIN -DCONFIG_ECRNX_ESWIN_SDIO -DCONFIG_STANDALONE_WIFI_BLE -DCONFIG_ECRNX_HE -DCONFIG_ECRNX_P2P -DCONFIG_ECRNX_WIFO_CAIL -Wno-date-time -Wno-declaration-after-statement -Wno-format -Wno-unused-variable -Wno-misleading-indentation -Wno-maybe-uninitialized  -fsanitize=bounds-strict -fsanitize=shift -fsanitize=bool -fsanitize=enum  -DMODULE  -DKBUILD_BASENAME='"ecrnx_strs"' -DKBUILD_MODNAME='"wlan_ecr6600"' -D__KBUILD_MODNAME=kmod_wlan_ecr6600 -c -o /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.c   ; ./tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --retpoline --rethunk --sls --stackval --static-call --uaccess --prefix=16   --module /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o

source_/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o := /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.c

deps_/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o := \
    $(wildcard include/config/ECRNX_FULLMAC) \
    $(wildcard include/config/ECRNX_P2P) \
  include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_IS_GCC) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/RETPOLINE) \
    $(wildcard include/config/GCC_ASM_GOTO_OUTPUT_WORKAROUND) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/lmac_msg.h \
    $(wildcard include/config/STANDALONE_WIFI) \
    $(wildcard include/config/STANDALONE_WIFI_BLE) \
    $(wildcard include/config/CEVA_RTOS) \
    $(wildcard include/config/ECRNX_FHOST) \
  /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/lmac_mac.h \
  /home/user0/.WORKDIR/eswin_wifi/eswin_6600u/lmac_types.h \
    $(wildcard include/config/ECRNX_TL4) \
  include/generated/uapi/linux/version.h \
  include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  include/uapi/linux/types.h \
  arch/x86/include/generated/uapi/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/x86/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  arch/x86/include/uapi/asm/posix_types_64.h \
  include/uapi/asm-generic/posix_types.h \
  include/linux/bits.h \
  include/linux/const.h \
  include/vdso/const.h \
  include/uapi/linux/const.h \
  include/vdso/bits.h \
  include/linux/build_bug.h \
  include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  arch/x86/include/generated/asm/rwonce.h \
  include/asm-generic/rwonce.h \
  include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \

/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o: $(deps_/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o)

$(deps_/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o):

/home/user0/.WORKDIR/eswin_wifi/eswin_6600u/ecrnx_strs.o: $(wildcard ./tools/objtool/objtool)
