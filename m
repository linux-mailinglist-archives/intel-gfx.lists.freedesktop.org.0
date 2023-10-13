Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 445A27C7D72
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 08:08:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7D410E59E;
	Fri, 13 Oct 2023 06:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8026110E59E;
 Fri, 13 Oct 2023 06:08:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77C43A7DFF;
 Fri, 13 Oct 2023 06:08:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 13 Oct 2023 06:08:08 -0000
Message-ID: <169717728845.31155.16072568975154969672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231012172137.3286566-1-jim.cromie@gmail.com>
In-Reply-To: <20231012172137.3286566-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG=3Dy_regression_=28rev2=29?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG=y regression (rev2)
URL   : https://patchwork.freedesktop.org/series/125063/
State : warning

== Summary ==

Error: dim checkpatch failed
f19b16bea5d4 test-dyndbg: fixup CLASSMAP usage error
d783749368ea dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
424c382e133f dyndbg: make ddebug_class_param union members same size
81887375de7c dyndbg: replace classmap list with a vector
2ee1cd2c072f dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
323a4be470ab dyndbg: split param_set_dyndbg_classes to module/wrapper fns
4a94e9407dac dyndbg: drop NUM_TYPE_ARRAY
c65b4f1556cd dyndbg: reduce verbose/debug clutter
535f1281625c dyndbg: silence debugs with no-change updates
e553f38b2822 dyndbg: tighten ddebug_class_name() 1st arg type
a1be09c33d2a dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
9407077c5bdc dyndbg: reduce verbose=3 messages in ddebug_add_module
69c1a7544cc0 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
e8a3c78ae248 dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
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

-:503: WARNING:CONFIG_DESCRIPTION: please write a help paragraph that fully describes the config symbol
#503: FILE: lib/Kconfig.debug:2820:
+config TEST_DYNAMIC_DEBUG_SUBMOD
+	tristate "Build test-dynamic-debug submodule"
+	default m
+	depends on DYNAMIC_DEBUG || DYNAMIC_DEBUG_CORE
+	depends on TEST_DYNAMIC_DEBUG
 	help
+	  This sub-module depends upon a classmap defined in the
+	  This sub-module depends upon a classmap defined in the
+	  This sub-module depends upon a classmap defined in the
+	  This sub-module depends upon a classmap defined in the
+	  super-module.  It it independently settable=m/y to allow all
+	  proper combinations of parent=y/m submod=y/m
 
 	  If unsure, say N.
 

-:769: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#769: FILE: lib/dynamic_debug.c:1254:
+	for (i = 0, cli = di->class_users; i < di->num_class_users; i++, cli++) {
+

-:774: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#774: FILE: lib/dynamic_debug.c:1259:
+		if (!strcmp(cli->user_mod_name, dt->mod_name)) {
+

-:875: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'base' may be better as '(base)' to avoid precedence issues
#875: FILE: lib/test_dynamic_debug.c:36:
+#define CLASSMAP_BITMASK(width, base) (((1UL << (width)) - 1) << base)

-:1008: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1008: 
new file mode 100644

total: 0 errors, 2 warnings, 4 checks, 754 lines checked
097c041853e1 dyndbg: add for_each_boxed_vector
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
40320c878aba dyndbg: refactor ddebug_classparam_clamp_input
d4cf0668bb04 dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
-:174: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#174: FILE: lib/test_dynamic_debug.c:72:
+/*
+  and possibly later, params accepting named-value inputs

total: 0 errors, 1 warnings, 0 checks, 197 lines checked
91cc270b98b2 dyndbg-doc: add classmap info to howto
-:71: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#71: FILE: Documentation/admin-guide/dynamic-debug-howto.rst:422:
+DYNDBG_CLASSMAP_USE - drm drivers invoke this to ref the the CLASSMAP

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
675543720719 dyndbg: reserve flag bit _DPRINTK_FLAGS_PREFIX_CACHED
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: include/linux/dynamic_debug.h:41:
+#define _DPRINTK_FLAGS_PREFIX_CACHED	(1<<7)
                                     	  ^

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
7fabb476531f dyndbg: add _DPRINTK_FLAGS_INCL_LOOKUP
-:12: WARNING:TYPO_SPELLING: 'retreived' may be misspelled - perhaps 'retrieved'?
#12: 
and retreived thereafter, as long as its deleted any time the
    ^^^^^^^^^

-:19: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#19: 
    doesnt belong in the cache. it would be wrong.
    ^^^^^^

total: 0 errors, 2 warnings, 0 checks, 15 lines checked
0aee8c751f63 dyndbg: refactor *dynamic_emit_prefix
-:82: ERROR:CODE_INDENT: code indent should use tabs where possible
#82: FILE: lib/dynamic_debug.c:796:
+        int pos_after_tid;$

-:82: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#82: FILE: lib/dynamic_debug.c:796:
+        int pos_after_tid;$

-:83: ERROR:CODE_INDENT: code indent should use tabs where possible
#83: FILE: lib/dynamic_debug.c:797:
+        int pos = 0;$

-:83: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#83: FILE: lib/dynamic_debug.c:797:
+        int pos = 0;$

-:85: ERROR:CODE_INDENT: code indent should use tabs where possible
#85: FILE: lib/dynamic_debug.c:799:
+        if (likely(!(desc->flags & _DPRINTK_FLAGS_INCL_ANY)))$

-:85: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#85: FILE: lib/dynamic_debug.c:799:
+        if (likely(!(desc->flags & _DPRINTK_FLAGS_INCL_ANY)))$

-:86: ERROR:CODE_INDENT: code indent should use tabs where possible
#86: FILE: lib/dynamic_debug.c:800:
+                return buf;$

-:86: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#86: FILE: lib/dynamic_debug.c:800:
+                return buf;$

-:88: ERROR:CODE_INDENT: code indent should use tabs where possible
#88: FILE: lib/dynamic_debug.c:802:
+        if (desc->flags & _DPRINTK_FLAGS_INCL_TID) {$

-:88: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#88: FILE: lib/dynamic_debug.c:802:
+        if (desc->flags & _DPRINTK_FLAGS_INCL_TID) {$

-:89: ERROR:CODE_INDENT: code indent should use tabs where possible
#89: FILE: lib/dynamic_debug.c:803:
+                if (in_interrupt())$

-:89: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#89: FILE: lib/dynamic_debug.c:803:
+                if (in_interrupt())$

-:90: ERROR:CODE_INDENT: code indent should use tabs where possible
#90: FILE: lib/dynamic_debug.c:804:
+                        pos += snprintf(buf + pos, remaining(pos), "<intr> ");$

-:90: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#90: FILE: lib/dynamic_debug.c:804:
+                        pos += snprintf(buf + pos, remaining(pos), "<intr> ");$

-:91: ERROR:CODE_INDENT: code indent should use tabs where possible
#91: FILE: lib/dynamic_debug.c:805:
+                else$

-:91: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#91: FILE: lib/dynamic_debug.c:805:
+                else$

-:92: ERROR:CODE_INDENT: code indent should use tabs where possible
#92: FILE: lib/dynamic_debug.c:806:
+                        pos += snprintf(buf + pos, remaining(pos), "[%d] ",$

-:92: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#92: FILE: lib/dynamic_debug.c:806:
+                        pos += snprintf(buf + pos, remaining(pos), "[%d] ",$

-:93: ERROR:CODE_INDENT: code indent should use tabs where possible
#93: FILE: lib/dynamic_debug.c:807:
+                                        task_pid_vnr(current));$

-:93: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#93: FILE: lib/dynamic_debug.c:807:
+                                        task_pid_vnr(current));$

-:94: ERROR:CODE_INDENT: code indent should use tabs where possible
#94: FILE: lib/dynamic_debug.c:808:
+        }$

-:94: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#94: FILE: lib/dynamic_debug.c:808:
+        }$

-:95: ERROR:CODE_INDENT: code indent should use tabs where possible
#95: FILE: lib/dynamic_debug.c:809:
+        pos_after_tid = pos;$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: lib/dynamic_debug.c:809:
+        pos_after_tid = pos;$

-:97: ERROR:CODE_INDENT: code indent should use tabs where possible
#97: FILE: lib/dynamic_debug.c:811:
+        if (unlikely(desc->flags & _DPRINTK_FLAGS_INCL_LOOKUP))$

-:97: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#97: FILE: lib/dynamic_debug.c:811:
+        if (unlikely(desc->flags & _DPRINTK_FLAGS_INCL_LOOKUP))$

-:98: ERROR:CODE_INDENT: code indent should use tabs where possible
#98: FILE: lib/dynamic_debug.c:812:
+                pos += __dynamic_emit_prefix(desc, buf, pos);$

-:98: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#98: FILE: lib/dynamic_debug.c:812:
+                pos += __dynamic_emit_prefix(desc, buf, pos);$

-:100: ERROR:CODE_INDENT: code indent should use tabs where possible
#100: FILE: lib/dynamic_debug.c:814:
+        if (desc->flags & _DPRINTK_FLAGS_INCL_LINENO)$

-:100: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#100: FILE: lib/dynamic_debug.c:814:
+        if (desc->flags & _DPRINTK_FLAGS_INCL_LINENO)$

-:101: ERROR:CODE_INDENT: code indent should use tabs where possible
#101: FILE: lib/dynamic_debug.c:815:
+                pos += snprintf(buf + pos, remaining(pos), "%d:",$

-:101: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#101: FILE: lib/dynamic_debug.c:815:
+                pos += snprintf(buf + pos, remaining(pos), "%d:",$

-:102: ERROR:CODE_INDENT: code indent should use tabs where possible
#102: FILE: lib/dynamic_debug.c:816:
+                                desc->lineno);$

-:102: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#102: FILE: lib/dynamic_debug.c:816:
+                                desc->lineno);$

-:103: ERROR:CODE_INDENT: code indent should use tabs where possible
#103: FILE: lib/dynamic_debug.c:817:
+        if (pos - pos_after_tid)$

-:103: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#103: FILE: lib/dynamic_debug.c:817:
+        if (pos - pos_after_tid)$

-:104: ERROR:CODE_INDENT: code indent should use tabs where possible
#104: FILE: lib/dynamic_debug.c:818:
+                pos += snprintf(buf + pos, remaining(pos), " ");$

-:104: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#104: FILE: lib/dynamic_debug.c:818:
+                pos += snprintf(buf + pos, remaining(pos), " ");$

-:105: ERROR:CODE_INDENT: code indent should use tabs where possible
#105: FILE: lib/dynamic_debug.c:819:
+        if (pos >= PREFIX_SIZE)$

-:105: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#105: FILE: lib/dynamic_debug.c:819:
+        if (pos >= PREFIX_SIZE)$

-:106: ERROR:CODE_INDENT: code indent should use tabs where possible
#106: FILE: lib/dynamic_debug.c:820:
+                buf[PREFIX_SIZE - 1] = '\0';$

-:106: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#106: FILE: lib/dynamic_debug.c:820:
+                buf[PREFIX_SIZE - 1] = '\0';$

-:108: ERROR:CODE_INDENT: code indent should use tabs where possible
#108: FILE: lib/dynamic_debug.c:822:
+        return buf;$

-:108: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#108: FILE: lib/dynamic_debug.c:822:
+        return buf;$

total: 22 errors, 22 warnings, 0 checks, 71 lines checked
f6b1497baa6c dyndbg: improve err report in attach_user_module_classes
-:28: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#28: FILE: lib/dynamic_debug.c:1287:
+		BUG_ON(!cli || !cli->map);

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
8cb5abeb1ccc drm: use correct ccflags-y spelling
cdf73937e28b drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
6beef4dbe945 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN


