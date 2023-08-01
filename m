Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51E76BBC8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 19:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AB510E19C;
	Tue,  1 Aug 2023 17:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1661710E19C;
 Tue,  1 Aug 2023 17:57:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FCDAAADF1;
 Tue,  1 Aug 2023 17:57:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Tue, 01 Aug 2023 17:57:29 -0000
Message-ID: <169091264903.10129.13030498889411658432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230801170255.163237-1-jim.cromie@gmail.com>
In-Reply-To: <20230801170255.163237-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG_regression_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: fix DRM_USE_DYNAMIC_DEBUG regression (rev3)
URL   : https://patchwork.freedesktop.org/series/113363/
State : warning

== Summary ==

Error: dim checkpatch failed
7aeb4d232ed1 drm: use correct ccflags-y syntax
f2caf4b42667 test-dyndbg: fixup CLASSMAP usage error
526ce764d947 dyndbg: make ddebug_class_param union members same size
9804fbd2bf06 dyndbg: replace classmap list with a vector
d1efc2926312 dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
777957497355 dyndbg: split param_set_dyndbg_classes to module/wrapper fns
-:68: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#68: FILE: lib/dynamic_debug.c:772:
 }
+/**

total: 0 errors, 0 warnings, 1 checks, 60 lines checked
421c57e10e33 dyndbg: drop NUM_TYPE_ARRAY
2f2afd7218af dyndbg: reduce verbose/debug clutter
3699a6e8db58 dyndbg: silence debugs with no-change updates
7344b3c0e3e3 dyndbg: tighten ddebug_class_name() 1st arg type
53f4c6e17be8 dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
03b1dd101a34 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
86bc871acb5c checkpatch: file-scoped extern special case for linker-symbol
1a864a4fe7ce dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:445: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#445: FILE: include/linux/dynamic_debug.h:120:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname)				\
+	extern struct ddebug_class_map _var;				\
+	struct ddebug_class_user __used					\
+	__section("__dyndbg_class_users") _uname = {			\
+		.user_mod_name = KBUILD_MODNAME,			\
+		.map = &_var,						\
 	}

-:719: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#719: FILE: lib/dynamic_debug.c:1248:
+	for (i = 0, cli = di->class_users; i < di->num_class_users; i++, cli++) {
+

-:724: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#724: FILE: lib/dynamic_debug.c:1253:
+		if (!strcmp(cli->user_mod_name, dt->mod_name)) {
+

-:821: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#821: FILE: lib/test_dynamic_debug.c:36:
+#define CLASSMAP_BITMASK(width, base) (((1UL << (width)) - 1) << base)

-:954: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#954: 
new file mode 100644

total: 0 errors, 1 warnings, 4 checks, 713 lines checked
ba5ccbbed8de dyndbg: add for_each_boxed_vector
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_box' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_box' may be better as '(_box)' to avoid precedence issues
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_vec' may be better as '(_vec)' to avoid precedence issues
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_len' may be better as '(_len)' to avoid precedence issues
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ct' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_curs' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:160:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = _box->_vec; _ct < _box->_len; _ct++, _curs++)

total: 0 errors, 0 warnings, 6 checks, 71 lines checked
21998d26a0f7 dyndbg: refactor ddebug_classparam_clamp_input
66625e467d44 dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
-:114: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_bits' may be better as '(_bits)' to avoid precedence issues
#114: FILE: include/linux/dynamic_debug.h:173:
+#define __DYNDBG_CLASSMAP_PARAM(_name, _bits, _var, _flags)		\
+	static struct ddebug_class_param _name##_##_flags = {		\
+		.bits = &_bits,						\
+		.flags = #_flags,					\
+		.map = &_var,						\
+	};								\
+	module_param_cb(_name, &param_ops_dyndbg_classes,		\
+			&_name##_##_flags, 0600)

-:114: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_var' may be better as '(_var)' to avoid precedence issues
#114: FILE: include/linux/dynamic_debug.h:173:
+#define __DYNDBG_CLASSMAP_PARAM(_name, _bits, _var, _flags)		\
+	static struct ddebug_class_param _name##_##_flags = {		\
+		.bits = &_bits,						\
+		.flags = #_flags,					\
+		.map = &_var,						\
+	};								\
+	module_param_cb(_name, &param_ops_dyndbg_classes,		\
+			&_name##_##_flags, 0600)

total: 0 errors, 0 warnings, 2 checks, 122 lines checked
0a756d9763ca dyndbg-test: build it with just CONFIG_DYNAMIC_DEBUG_CORE
7770096a8dd6 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
91a6b6415ee3 drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
0f8e7329dc55 dyndbg-doc: add classmap info to howto
f2ecffb1eb7b checkpatch: reword long-line warn about commit-msg


