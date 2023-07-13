Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1142752B66
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 22:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BA510E77E;
	Thu, 13 Jul 2023 20:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CC8C10E77E;
 Thu, 13 Jul 2023 20:10:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06957A00E6;
 Thu, 13 Jul 2023 20:10:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Thu, 13 Jul 2023 20:10:48 -0000
Message-ID: <168927904802.14984.9749140843031426940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230713163626.31338-1-jim.cromie@gmail.com>
In-Reply-To: <20230713163626.31338-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG_regression_=28rev2=29?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG regression (rev2)
URL   : https://patchwork.freedesktop.org/series/113363/
State : warning

== Summary ==

Error: dim checkpatch failed
075f00fa91b5 drm: use correct ccflags-y syntax
da5e4e98a0f2 test-dyndbg: fixup CLASSMAP usage error
bb7f9d768fa1 dyndbg: make ddebug_class_param union members same size
705c022f0043 dyndbg: replace classmap list with a vector
855269370ac5 dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
ecd5ac2c7986 dyndbg: split param_set_dyndbg_classes to module/wrapper fns
-:68: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#68: FILE: lib/dynamic_debug.c:772:
 }
+/**

total: 0 errors, 0 warnings, 1 checks, 60 lines checked
fe3ccd116db8 dyndbg: drop NUM_TYPE_ARRAY
e3b9b37549df dyndbg: reduce verbose/debug clutter
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
 dyndbg: parsed: func="" file="" module="" format="" lineno=0-0 class=DRM_UT_CORE

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
bed4c9cf5e20 dyndbg: silence debugs with no-change updates
a799f27373c8 dyndbg: tighten ddebug_class_name() 1st arg type
086e0baab17d dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
78ca67037fd9 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
-:157: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#157: FILE: lib/dynamic_debug.c:644:
+	/* numeric input, accept and fall-thru */

total: 0 errors, 1 warnings, 0 checks, 179 lines checked
fb5cf263531d dyndbg-API: fix DECLARE_DYNDBG_CLASSMAP & CONFIG_DRM_USE_DYNAMIC_DEBUG
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:71: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#71: 
dynamic_debug.c has changes in 2 areas: ddebug_add_module(), ddebug_change().

-:163: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bb2ff6c27bc9 ("drm: Disable dynamic debug as broken")'
#163: 
Ref: bb2ff6c27bc9 ("drm: Disable dynamic debug as broken")

-:422: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#422: FILE: include/linux/dynamic_debug.h:109:
+};
+/**

-:432: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#432: FILE: include/linux/dynamic_debug.h:119:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname)				\
+	extern struct ddebug_class_map _var;				\
+	struct ddebug_class_user __used					\
+	__section("__dyndbg_class_users") _uname = {			\
+		.user_mod_name = KBUILD_MODNAME,			\
+		.map = &_var,						\
 	}

-:486: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#486: FILE: lib/dynamic_debug.c:46:
+extern struct ddebug_class_user __start___dyndbg_class_users[];

-:487: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#487: FILE: lib/dynamic_debug.c:47:
+extern struct ddebug_class_user __stop___dyndbg_class_users[];

-:504: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dt' - possible side-effects?
#504: FILE: lib/dynamic_debug.c:153:
+#define vpr_dt_info(dt, _msg, ...)					\
+	v2pr_info(_msg " module:%s nd:%d nc:%d nu:%d\n", ##__VA_ARGS__,	\
+		  dt->mod_name, dt->num_ddebugs, dt->num_classes, dt->num_class_users)

-:504: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'dt' may be better as '(dt)' to avoid precedence issues
#504: FILE: lib/dynamic_debug.c:153:
+#define vpr_dt_info(dt, _msg, ...)					\
+	v2pr_info(_msg " module:%s nd:%d nc:%d nu:%d\n", ##__VA_ARGS__,	\
+		  dt->mod_name, dt->num_ddebugs, dt->num_classes, dt->num_class_users)

-:586: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#586: FILE: lib/dynamic_debug.c:1142:
+static const char* ddebug_classmap_typenames[] = {

-:586: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#586: FILE: lib/dynamic_debug.c:1142:
+static const char* ddebug_classmap_typenames[] = {

-:590: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cm' - possible side-effects?
#590: FILE: lib/dynamic_debug.c:1146:
+#define vpr_cm_info(cm, _msg, ...)					\
+	v2pr_info(_msg " module:%s base:%d len:%d type:%s\n", ##__VA_ARGS__, \
+		  cm->mod_name, cm->base, cm->length, ddebug_classmap_typenames[cm->map_type])

-:590: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'cm' may be better as '(cm)' to avoid precedence issues
#590: FILE: lib/dynamic_debug.c:1146:
+#define vpr_cm_info(cm, _msg, ...)					\
+	v2pr_info(_msg " module:%s base:%d len:%d type:%s\n", ##__VA_ARGS__, \
+		  cm->mod_name, cm->base, cm->length, ddebug_classmap_typenames[cm->map_type])

-:606: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#606: FILE: lib/dynamic_debug.c:1162:
+static void ddebug_match_apply_kparam(const struct kernel_param *kp, const struct ddebug_class_map *map, const char *modnm)

-:663: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#663: FILE: lib/dynamic_debug.c:1210:
 		if (!strcmp(cm->mod_name, dt->mod_name)) {
+

-:667: WARNING:BRACES: braces {} are not necessary for single statement blocks
#667: FILE: lib/dynamic_debug.c:1214:
+			if (!nc++) {
 				dt->classes = cm;
 			}

-:689: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#689: FILE: lib/dynamic_debug.c:1233:
+static void ddebug_attach_client_module_classes(struct ddebug_table *dt, const struct _ddebug_info *di)

-:700: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#700: FILE: lib/dynamic_debug.c:1244:
+	for (i = 0, cli = di->class_users; i < di->num_class_users; i++, cli++) {
+

-:705: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#705: FILE: lib/dynamic_debug.c:1249:
+		if (!strcmp(cli->user_mod_name, dt->mod_name)) {
+

-:803: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#803: FILE: lib/test_dynamic_debug.c:36:
+#define CLASSMAP_BITMASK(width, base) (((1UL << (width)) - 1) << base)

-:936: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#936: 
new file mode 100644

total: 2 errors, 8 warnings, 10 checks, 699 lines checked
c0a4cea422ee dyndbg: refactor ddebug_classparam_clamp_input
-:104: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#104: FILE: lib/dynamic_debug.c:1177:
+		v2pr_info("%s: lvl:%ld bits:0x%lx \n", KP_NAME(kp), *dcp->lvl, new_bits);

total: 0 errors, 1 warnings, 0 checks, 100 lines checked
1a5462aee94d dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
-:15: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#15: 
    new user (test_dynamic_debug) doesnt need to share state,
                                  ^^^^^^

-:21: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#21: 
1. doesnt initialize bits properly.
   ^^^^^^

-:24: WARNING:TYPO_SPELLING: 'trys' may be misspelled - perhaps 'tries'?
#24: 
   punt now - following commit trys to fix it, draws warning.
                               ^^^^

-:123: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_bits' may be better as '(_bits)' to avoid precedence issues
#123: FILE: include/linux/dynamic_debug.h:172:
+#define __DYNDBG_CLASSMAP_PARAM(_name, _bits, _var, _flags)		\
+	static struct ddebug_class_param _name##_##_flags = {		\
+		.bits = &_bits,						\
+		.flags = #_flags,					\
+		.map = &_var,						\
+	};								\
+	module_param_cb(_name, &param_ops_dyndbg_classes,		\
+			&_name##_##_flags, 0600)

-:123: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_var' may be better as '(_var)' to avoid precedence issues
#123: FILE: include/linux/dynamic_debug.h:172:
+#define __DYNDBG_CLASSMAP_PARAM(_name, _bits, _var, _flags)		\
+	static struct ddebug_class_param _name##_##_flags = {		\
+		.bits = &_bits,						\
+		.flags = #_flags,					\
+		.map = &_var,						\
+	};								\
+	module_param_cb(_name, &param_ops_dyndbg_classes,		\
+			&_name##_##_flags, 0600)

total: 0 errors, 3 warnings, 2 checks, 122 lines checked
7a92889fdf06 dyndbg-test: make it build with just CONFIG_DYNAMIC_DEBUG_CORE
6e79033fb669 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN
96c77b59d00c compiler.h: RFC - s/__LINE__/__COUNTER__/ in __UNIQUE_ID fallback
-:19: WARNING:TYPO_SPELLING: 'shouldnt' may be misspelled - perhaps 'shouldn't'?
#19: 
shouldnt happen on gcc & clang, but does on some older ones, on some
^^^^^^^^

-:57: CHECK:CAMELCASE: Avoid CamelCase: <_kaUID_>
#57: FILE: include/linux/compiler.h:182:
+# define __UNIQUE_ID(prefix) __PASTE(__PASTE(_kaUID_, prefix), __COUNTER__)

total: 0 errors, 1 warnings, 1 checks, 11 lines checked
a4afa5c542bb drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
-:40: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#40: 
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
769d49cb902e config TEST_DYNAMIC_DEBUG default m
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
5482eb7e68c1 dyndbg-doc: add classmap info to howto
-:37: ERROR:TRAILING_WHITESPACE: trailing whitespace
#37: FILE: Documentation/admin-guide/dynamic-debug-howto.rst:387:
+- isolates from other class'd and un-class'd pr_debugs() $

-:38: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#38: FILE: Documentation/admin-guide/dynamic-debug-howto.rst:388:
+  (one doesnt mix 2 clients bank accounts)
        ^^^^^^

-:62: ERROR:TRAILING_WHITESPACE: trailing whitespace
#62: FILE: Documentation/admin-guide/dynamic-debug-howto.rst:412:
+   $

total: 2 errors, 1 warnings, 0 checks, 73 lines checked


