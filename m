Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AACD7CEC6B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 01:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D317A10E462;
	Wed, 18 Oct 2023 23:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 18DD710E462;
 Wed, 18 Oct 2023 23:59:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08798AADD8;
 Wed, 18 Oct 2023 23:59:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Wed, 18 Oct 2023 23:59:07 -0000
Message-ID: <169767354700.15107.10021853933152537445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231018170604.569042-1-jim.cromie@gmail.com>
In-Reply-To: <20231018170604.569042-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG=3Dy_regression_=28rev4=29?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG=y regression (rev4)
URL   : https://patchwork.freedesktop.org/series/125063/
State : warning

== Summary ==

Error: dim checkpatch failed
de473fa889bf test-dyndbg: fixup CLASSMAP usage error
6120b244541c dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
f126f978b435 dyndbg: make ddebug_class_param union members same size
aae94727a713 dyndbg: replace classmap list with a vector
66b5f39c8785 dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
1cdfc9d903fc dyndbg: split param_set_dyndbg_classes to module/wrapper fns
fc06b7feccfe dyndbg: drop NUM_TYPE_ARRAY
ffcb9f1f8636 dyndbg: reduce verbose/debug clutter
c866a539e406 dyndbg: silence debugs with no-change updates
4784ef035287 dyndbg: tighten ddebug_class_name() 1st arg type
3ac7b8d72fd2 dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
1da13b10463b dyndbg: reduce verbose=3 messages in ddebug_add_module
74131b274a45 dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
43de21a56b00 dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
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

-:992: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#992: 
new file mode 100644

total: 0 errors, 1 warnings, 4 checks, 738 lines checked
a01f9dca7c9a dyndbg: refactor ddebug_classparam_clamp_input
d22b3571321b dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
22dd04f68f6a dyndbg-doc: add classmap info to howto
bba3fca7dc81 dyndbg: reserve flag bit _DPRINTK_FLAGS_PREFIX_CACHED
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: include/linux/dynamic_debug.h:41:
+#define _DPRINTK_FLAGS_PREFIX_CACHED	(1<<7)
                                     	  ^

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
5de650a517eb dyndbg: add _DPRINTK_FLAGS_INCL_LOOKUP
16edd46daddc dyndbg: refactor *dynamic_emit_prefix
3be6bca84bf4 dyndbg: change WARN_ON to WARN_ON_ONCE
fdb1745e66b1 drm: use correct ccflags-y spelling
57081bf5f017 drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
4f5d83495dc0 drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN


