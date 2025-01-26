Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44375A1CD77
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2025 19:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CF710E16E;
	Sun, 26 Jan 2025 18:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF6DD10E16E;
 Sun, 26 Jan 2025 18:35:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGZpeCBDT05GSUdfRFJN?=
 =?utf-8?b?X1VTRV9EWU5BTUlDX0RFQlVHPXkgKHJldjMp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Jan 2025 18:35:11 -0000
Message-ID: <173791651169.976754.8938786484941906956@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250125064619.8305-1-jim.cromie@gmail.com>
In-Reply-To: <20250125064619.8305-1-jim.cromie@gmail.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y (rev3)
URL   : https://patchwork.freedesktop.org/series/135705/
State : warning

== Summary ==

Error: dim checkpatch failed
0303dbb9b927 docs/dyndbg: update examples \012 to \n
dd0c22d6cf73 test-dyndbg: fixup CLASSMAP usage error
e192a085128f dyndbg: reword "class unknown," to "class:_UNKNOWN_"
8a7373dd9070 dyndbg: make ddebug_class_param union members same size
19c32ffee87c dyndbg: replace classmap list with a vector
1b8179aea6e6 dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
99d2e5c03a31 dyndbg: split param_set_dyndbg_classes to _module & wrapper fns
9b460f0d8577 dyndbg: drop NUM_TYPE_ARRAY
0617f1fe65c1 dyndbg: reduce verbose/debug clutter
c536e2d99b72 dyndbg: silence debugs with no-change updates
09017a660ccf dyndbg: tighten ddebug_class_name() 1st arg type
88003ef00273 dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
1ae5c85bf707 dyndbg: reduce verbose=3 messages in ddebug_add_module
60d3a7dcdfb6 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
83105033661d checkpatch: add an exception to the do-while wrapper advice
0a607d3c89dc dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
-:239: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#239: FILE: include/linux/dynamic_debug.h:113:
+#define DYNDBG_CLASSMAP_DEFINE(_var, _mapty, _base, ...)		\
+	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
+	extern struct ddebug_class_map _var;				\
+	struct ddebug_class_map __aligned(8) __used			\
+		__section("__dyndbg_classes") _var = {			\
+		.mod = THIS_MODULE,					\
+		.mod_name = KBUILD_MODNAME,				\
+		.base = (_base),					\
+		.map_type = (_mapty),					\
+		.length = ARRAY_SIZE(_var##_classnames),		\
+		.class_names = _var##_classnames,			\
+	};								\
+	EXPORT_SYMBOL(_var)

-:279: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#279: FILE: include/linux/dynamic_debug.h:159:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname)				\
+	extern struct ddebug_class_map _var;				\
+	static struct ddebug_class_user __aligned(8) __used		\
+	__section("__dyndbg_class_users") _uname = {			\
+		.mod_name = KBUILD_MODNAME,				\
+		.map = &(_var),						\
+	}

-:861: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#861: 
new file mode 100644

total: 0 errors, 1 warnings, 2 checks, 653 lines checked
84c316fac294 dyndbg: check DYNDBG_CLASSMAP_DEFINE args at compile-time
-:26: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#26: FILE: include/linux/dynamic_debug.h:102:
+#define __DYNDBG_CLASSMAP_CHECK(_clnames, _base)			\
+	static_assert(((_base) >= 0 && (_base) < _DPRINTK_CLASS_DFLT),	\
+		      "_base must be in 0..62");			\
+	static_assert(ARRAY_SIZE(_clnames) > 0,				\
+		      "classnames array size must be > 0");		\
+	static_assert((ARRAY_SIZE(_clnames) + (_base)) < _DPRINTK_CLASS_DFLT, \
+		      "_base + classnames.length exceeds range")

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_clnames' - possible side-effects?
#26: FILE: include/linux/dynamic_debug.h:102:
+#define __DYNDBG_CLASSMAP_CHECK(_clnames, _base)			\
+	static_assert(((_base) >= 0 && (_base) < _DPRINTK_CLASS_DFLT),	\
+		      "_base must be in 0..62");			\
+	static_assert(ARRAY_SIZE(_clnames) > 0,				\
+		      "classnames array size must be > 0");		\
+	static_assert((ARRAY_SIZE(_clnames) + (_base)) < _DPRINTK_CLASS_DFLT, \
+		      "_base + classnames.length exceeds range")

-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_base' - possible side-effects?
#26: FILE: include/linux/dynamic_debug.h:102:
+#define __DYNDBG_CLASSMAP_CHECK(_clnames, _base)			\
+	static_assert(((_base) >= 0 && (_base) < _DPRINTK_CLASS_DFLT),	\
+		      "_base must be in 0..62");			\
+	static_assert(ARRAY_SIZE(_clnames) > 0,				\
+		      "classnames array size must be > 0");		\
+	static_assert((ARRAY_SIZE(_clnames) + (_base)) < _DPRINTK_CLASS_DFLT, \
+		      "_base + classnames.length exceeds range")

total: 1 errors, 0 warnings, 2 checks, 40 lines checked
d77abbe61691 dyndbg: add/use for_subvec() to reduce boilerplate
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
#28: FILE: lib/dynamic_debug.c:170:
+#define for_subvec(_i, _sp, _box, _vec)				       \
+	for ((_i) = 0, (_sp) = (_box)->_vec;			       \
+	     (_i) < (_box)->num_##_vec;				       \
+	     (_i)++, (_sp)++)

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_sp' - possible side-effects?
#28: FILE: lib/dynamic_debug.c:170:
+#define for_subvec(_i, _sp, _box, _vec)				       \
+	for ((_i) = 0, (_sp) = (_box)->_vec;			       \
+	     (_i) < (_box)->num_##_vec;				       \
+	     (_i)++, (_sp)++)

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_box' - possible side-effects?
#28: FILE: lib/dynamic_debug.c:170:
+#define for_subvec(_i, _sp, _box, _vec)				       \
+	for ((_i) = 0, (_sp) = (_box)->_vec;			       \
+	     (_i) < (_box)->num_##_vec;				       \
+	     (_i)++, (_sp)++)

-:28: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_vec' may be better as '(_vec)' to avoid precedence issues
#28: FILE: lib/dynamic_debug.c:170:
+#define for_subvec(_i, _sp, _box, _vec)				       \
+	for ((_i) = 0, (_sp) = (_box)->_vec;			       \
+	     (_i) < (_box)->num_##_vec;				       \
+	     (_i)++, (_sp)++)

total: 0 errors, 0 warnings, 4 checks, 84 lines checked
e82cbb462917 dyndbg: make proper substructs in _ddebug_info
3c06ad390a66 dyndbg: drop premature optimization in ddebug_add_module
19107a1cc14c dyndbg: allow ddebug_add_module to fail
-:62: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#62: FILE: lib/dynamic_debug.c:1250:
+static int ddebug_attach_user_module_classes(struct ddebug_table *dt,
+					      const struct _ddebug_info *di,

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
a4c400b80ad5 dyndbg: rework ddebug_attach_*module_classes()
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_dst' - possible side-effects?
#56: FILE: lib/dynamic_debug.c:1225:
+#define dd_mark_vector_subrange(_i, _dst, _sp, _box, _vec) ({		\
+	int nc = 0;							\
+	for_subvec(_i, _sp, _box, _vec) {				\
+		if (!strcmp((_sp)->mod_name, (_dst)->mod_name)) {	\
+			if (!nc++)					\
+				(_dst)->info._vec.start = (_sp);	\
+		} else {						\
+			if (nc)						\
+				break; /* end of consecutive matches */ \
+		}							\
+	}								\
+	(_dst)->info._vec.len = nc;					\
+})

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_sp' - possible side-effects?
#56: FILE: lib/dynamic_debug.c:1225:
+#define dd_mark_vector_subrange(_i, _dst, _sp, _box, _vec) ({		\
+	int nc = 0;							\
+	for_subvec(_i, _sp, _box, _vec) {				\
+		if (!strcmp((_sp)->mod_name, (_dst)->mod_name)) {	\
+			if (!nc++)					\
+				(_dst)->info._vec.start = (_sp);	\
+		} else {						\
+			if (nc)						\
+				break; /* end of consecutive matches */ \
+		}							\
+	}								\
+	(_dst)->info._vec.len = nc;					\
+})

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_vec' - possible side-effects?
#56: FILE: lib/dynamic_debug.c:1225:
+#define dd_mark_vector_subrange(_i, _dst, _sp, _box, _vec) ({		\
+	int nc = 0;							\
+	for_subvec(_i, _sp, _box, _vec) {				\
+		if (!strcmp((_sp)->mod_name, (_dst)->mod_name)) {	\
+			if (!nc++)					\
+				(_dst)->info._vec.start = (_sp);	\
+		} else {						\
+			if (nc)						\
+				break; /* end of consecutive matches */ \
+		}							\
+	}								\
+	(_dst)->info._vec.len = nc;					\
+})

total: 0 errors, 0 warnings, 3 checks, 145 lines checked
e58f75362a44 dyndbg: fail modprobe on ddebug_class_range_overlap()
e01160049d93 dyndbg: hoist the range-overlap checks
484a8ae9f2e0 ddebug: cleanup-range-overlap fails
d33bcccea2b1 dyndbg-test: change do_prints testpoint to accept a loopct
0dda84e6e3a1 selftests-dyndbg: add tools/testing/selftests/dynamic_debug/*
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 281 lines checked
ae8e2421ce5e dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
a0e9a779c5a9 dyndbg-doc: add classmap info to howto
d82f21b2932e dyndbg: treat comma as a token separator
cdfa907bffed selftests-dyndbg: add comma_terminator_tests
ec2b9480dbee dyndbg: split multi-query strings with %
c8dc2220b06c selftests-dyndbg: test_percent_splitting
752ea068daf9 docs/dyndbg: explain new delimiters: comma, percent
f6eec0294239 selftests-dyndbg: add test_mod_submod
e3e07e982ce7 docs/dyndbg: explain flags parse 1st
baf3223d8634 dyndbg: change __dynamic_func_call_cls* macros into expressions
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#34: FILE: include/linux/dynamic_debug.h:334:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) ({	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
 	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&(id), ##__VA_ARGS__);			\
+})

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#46: FILE: include/linux/dynamic_debug.h:343:
+#define __dynamic_func_call_cls_no_desc(id, cls, fmt, func, ...) ({	\
 	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
 	if (DYNAMIC_DEBUG_BRANCH(id))					\
 		func(__VA_ARGS__);					\
+})

total: 0 errors, 0 warnings, 2 checks, 26 lines checked
675ec446ee8b dyndbg: drop "protection" of class'd pr_debugs from legacy queries
985e089200c5 drm: use correct ccflags-y spelling
f09f78b3f7ca checkpatch: dont warn about unused macro arg on empty body
6c183703f5a3 drm-dyndbg: adapt drm core to use dyndbg classmaps-v2
eddec3407bca drm-dyndbg: adapt DRM to invoke DYNDBG_CLASSMAP_PARAM
29f155c36338 drm-print: fix config-dependent unused variable
90a21e7b9e91 drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
dc90f08f3585 drm-dyndbg: DRM_CLASSMAP_USE in i915 driver
56f77c209737 drm-dyndbg: DRM_CLASSMAP_USE in drm_crtc_helper
3897fb4e081f drm-dyndbg: DRM_CLASSMAP_USE in drm_dp_helper
8620edc0c0b2 drm-dyndbg: DRM_CLASSMAP_USE in nouveau
9edc39593919 drm-dyndbg: add DRM_CLASSMAP_USE to Xe driver
5854b92ef3ae drm-dyndbg: add DRM_CLASSMAP_USE to virtio_gpu
80b98a307eeb drm-dyndbg: add DRM_CLASSMAP_USE to simpledrm
b439db2453ea drm-dyndbg: add DRM_CLASSMAP_USE to bochs
63d592028f72 drm-dyndbg: add DRM_CLASSMAP_USE to etnaviv
49d554460e5f drm-dyndbg: add DRM_CLASSMAP_USE to gma500 driver
e8c11311de7e drm-dyndbg: add DRM_CLASSMAP_USE to radeon
9985c65c6de3 drm-dyndbg: add DRM_CLASSMAP_USE to vmwgfx driver
946e697a7459 drm-dyndbg: add DRM_CLASSMAP_USE to vkms driver
d3cdfa2d6a02 drm-dyndbg: add DRM_CLASSMAP_USE to udl driver
9c458a152af1 drm-dyndbg: add DRM_CLASSMAP_USE to mgag200 driver
3d83a3bf67a1 drm-dyndbg: add DRM_CLASSMAP_USE to the gud driver
94e16ee1cb2e drm-dyndbg: add DRM_CLASSMAP_USE to the qxl driver
29453f60fe51 drm-dyndbg: add DRM_CLASSMAP_USE to the drm_gem_shmem_helper driver
cb22402ff4e7 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN


