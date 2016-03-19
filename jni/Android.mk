LOCAL_PATH := $(call my-dir)
###############localcharset##################
include $(CLEAR_VARS)
LOCAL_MODULE    := localcharset 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/libcharset \
	$(LOCAL_PATH)/glib
LOCAL_CFLAGS += \
		-DHAVE_CONFIG_H 
LOCAL_SRC_FILES := \
	glib/libcharset/localcharset.c \

include $(BUILD_STATIC_LIBRARY)

###############gnulib##################
include $(CLEAR_VARS)
LOCAL_MODULE    := gnulib 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/gnulib \
	$(LOCAL_PATH)/glib
LOCAL_CFLAGS += \
		-DHAVE_CONFIG_H 
LOCAL_SRC_FILES := \
	glib/gnulib/asnprintf.c \
	glib/gnulib/printf-args.c \
	glib/gnulib/printf.c \
	glib/gnulib/printf-parse.c \
	glib/gnulib/vasnprintf.c 

include $(BUILD_STATIC_LIBRARY)



###############pcre##################
include $(CLEAR_VARS)
LOCAL_MODULE    := pcre 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/glib

LOCAL_SRC_FILES := \
		glib/pcre/pcre_byte_order.c \
		glib/pcre/pcre_chartables.c \
		glib/pcre/pcre_compile.c \
		glib/pcre/pcre_config.c \
		glib/pcre/pcre_dfa_exec.c \
		glib/pcre/pcre_exec.c \
		glib/pcre/pcre_fullinfo.c \
		glib/pcre/pcre_get.c \
		glib/pcre/pcre_globals.c \
		glib/pcre/pcre_jit_compile.c \
		glib/pcre/pcre_newline.c \
		glib/pcre/pcre_ord2utf8.c \
		glib/pcre/pcre_string_utils.c \
		glib/pcre/pcre_study.c \
		glib/pcre/pcre_tables.c \
		glib/pcre/pcre_valid_utf8.c \
		glib/pcre/pcre_xclass.c 
		
LOCAL_CFLAGS += \
		-DHAVE_CONFIG_H \
		-DLINK_SIZE=2 \
		-DNEWLINE=-1 \
		-DMATCH_LIMIT=10000000 \
		-DMATCH_LIMIT_RECURSION=8192 \
		-DMAX_NAME_SIZE=32 \
		-DMAX_NAME_COUNT=10000 \
		-DPOSIX_MALLOC_THRESHOLD=10 \
		-DHAVE_MEMMOVE \
		-DSUPPORT_UCP \
		-DSUPPORT_UTF \
		-DSUPPORT_UTF8 \
		-DMAX_DUPLENGTH=30000 \
		-DPCRE_STATIC \
		-UBSR_ANYCRLF \
		-UEBCDIC \
		-DG_DISABLE_CAST_CHECKS \
		-DGLIB_COMPILATION 


include $(BUILD_STATIC_LIBRARY)


###############glib##################
include $(CLEAR_VARS)
LOCAL_MODULE    := glib 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/intl/include \
	$(LOCAL_PATH)/iconv/include \
	$(LOCAL_PATH)/glib 


LOCAL_SRC_FILES := \
		glib/giounix.c \
		glib/gshell.c \
		glib/gspawn.c \
		glib/gslice.c \
		glib/gslist.c \
		glib/deprecated/gallocator.c \
		glib/gstdio.c \
		glib/garray.c \
		glib/gstrfuncs.c \
		glib/gasyncqueue.c \
		glib/gstringchunk.c \
		glib/gatomic.c \
		glib/gstring.c \
		glib/gbacktrace.c \
		glib/gtestutils.c \
		glib/gbase64.c \
		glib/deprecated/gthread-deprecated.c \
		glib/gbitlock.c \
		glib/gthread.c \
		glib/gbookmarkfile.c \
		glib/gthreadpool.c \
		glib/gbytes.c \
		glib/gthread-posix.c \
		glib/deprecated/gcache.c \
		glib/gtimer.c \
		glib/gcharset.c \
		glib/gtimezone.c \
		glib/gchecksum.c \
		glib/gtranslit.c \
		glib/deprecated/gcompletion.c \
		glib/gtrashstack.c \
		glib/gconvert.c \
		glib/gtree.c \
		glib/gdataset.c \
		glib/gunibreak.c \
		glib/gdate.c \
		glib/gunicollate.c \
		glib/gdatetime.c \
		glib/gunidecomp.c \
		glib/gdir.c \
		glib/guniprop.c \
		glib/genviron.c \
		glib/gurifuncs.c \
		glib/gerror.c \
		glib/gutf8.c \
		glib/gfileutils.c \
		glib/gutils.c \
		glib/ggettext.c \
		glib/gvariant-core.c \
		glib/ghash.c \
		glib/gvariant.c \
		glib/ghmac.c \
		glib/gvariant-parser.c \
		glib/ghook.c \
		glib/gvariant-serialiser.c \
		glib/ghostutils.c \
		glib/gvarianttypeinfo.c \
		glib/giochannel.c \
		glib/gvarianttype.c \
		glib/gkeyfile.c \
		glib/gversion.c \
		glib/glib-init.c \
		glib/gwakeup.c \
		glib/glib-private.c \
		glib/glib-unix.c \
		glib/glist.c \
		glib/gmain.c \
		glib/gmappedfile.c \
		glib/gmarkup.c \
		glib/gmem.c \
		glib/gmessages.c \
		glib/gnode.c \
		glib/goption.c \
		glib/gpattern.c \
		glib/gpoll.c \
		glib/gprimes.c \
		glib/gprintf.c \
		glib/gqsort.c \
		glib/gquark.c \
		glib/gqueue.c \
		glib/grand.c \
		glib/gregex.c \
		glib/deprecated/grel.c \
		glib/gscanner.c \
		glib/gsequence.c 
		
LOCAL_CFLAGS += \
		-DHAVE_CONFIG_H \



LOCAL_STATIC_LIBRARIES := pcre gnulib localcharset iconv intl

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/iconv/Android.mk
include $(LOCAL_PATH)/../intl/Android.mk


