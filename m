Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E50F17C9194
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Oct 2023 01:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9340A10E071;
	Fri, 13 Oct 2023 23:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E77210E071;
 Fri, 13 Oct 2023 23:57:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D9BFAADF1;
 Fri, 13 Oct 2023 23:57:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 13 Oct 2023 23:57:07 -0000
Message-ID: <169724142715.31159.6241446074633264250@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231013224818.3456409-1-jim.cromie@gmail.com>
In-Reply-To: <20231013224818.3456409-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG=3Dy_regression_=28rev3=29?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG=y regression (rev3)
URL   : https://patchwork.freedesktop.org/series/125063/
State : warning

== Summary ==

Error: dim checkpatch failed
df3a4914f745 test-dyndbg: fixup CLASSMAP usage error
c097f28a3829 dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
33ca08f3314b dyndbg: make ddebug_class_param union members same size
69bab57255ad dyndbg: replace classmap list with a vector
b225d958132b dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
e3a881f9de6d dyndbg: split param_set_dyndbg_classes to module/wrapper fns
435b8a49034f dyndbg: drop NUM_TYPE_ARRAY
63eed7f0611a dyndbg: reduce verbose/debug clutter
bb69bc12e6d1 dyndbg: silence debugs with no-change updates
2899baeed672 dyndbg: tighten ddebug_class_name() 1st arg type
9da2adc44b68 dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
a5ddc635a9b3 dyndbg: reduce verbose=3 messages in ddebug_add_module
5dd696ea1ec3 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
be64775bdd73 dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:451: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#451: FILE: include/linux/dynamic_debug.h:121:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname)				\
+	extern struct ddebug_class_map _var;				\
+	static struct ddebug_class_user __aligned(8) __used		\
+	__section("__dyndbg_class_users") _uname = {			\
+		.user_mod_name = KBUILD_MODNAME,			\
+		.map = &_var,						\
 	}

-:771: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#771: FILE: lib/dynamic_debug.c:1254:
+	for (i = 0, cli = di->class_users; i < di->num_class_users; i++, cli++) {
+

-:776: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#776: FILE: lib/dynamic_debug.c:1259:
+		if (!strcmp(cli->user_mod_name, dt->mod_name)) {
+

-:877: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#877: FILE: lib/test_dynamic_debug.c:36:
+#define CLASSMAP_BITMASK(width, base) (((1UL << (width)) - 1) << base)

-:1010: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1010: 
new file mode 100644

total: 0 errors, 1 warnings, 4 checks, 756 lines checked
7eb2b750e277 dyndbg: add for_each_boxed_vector
-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_box' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:161:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = (_box)->_vec; _ct < (_box)->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_vec' may be better as '(_vec)' to avoid precedence issues
#19: FILE: lib/dynamic_debug.c:161:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = (_box)->_vec; _ct < (_box)->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_len' may be better as '(_len)' to avoid precedence issues
#19: FILE: lib/dynamic_debug.c:161:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = (_box)->_vec; _ct < (_box)->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_ct' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:161:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = (_box)->_vec; _ct < (_box)->_len; _ct++, _curs++)

-:19: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_curs' - possible side-effects?
#19: FILE: lib/dynamic_debug.c:161:
+#define for_each_boxed_vector(_box, _vec, _len, _ct, _curs)		\
+	for (_ct = 0, _curs = (_box)->_vec; _ct < (_box)->_len; _ct++, _curs++)

total: 0 errors, 0 warnings, 5 checks, 71 lines checked
3d7f2809c9fb dyndbg: refactor ddebug_classparam_clamp_input
c82f3557a675 dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
0b7c1b3e7516 dyndbg-doc: add classmap info to howto
bbd018a63091 dyndbg: reserve flag bit _DPRINTK_FLAGS_PREFIX_CACHED
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: include/linux/dynamic_debug.h:41:
+#define _DPRINTK_FLAGS_PREFIX_CACHED	(1<<7)
                                     	  ^

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
539bac55d682 dyndbg: add _DPRINTK_FLAGS_INCL_LOOKUP
1a220d47995e dyndbg: refactor *dynamic_emit_prefix
7bd404363b52 dyndbg: change WARN_ON to WARN_ON_ONCE
4051b620245c drm: use correct ccflags-y spelling
8a5559e3aaf5 drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
18845430cd6a drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN


