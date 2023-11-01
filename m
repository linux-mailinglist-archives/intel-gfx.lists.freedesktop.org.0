Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E3F7DDA91
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 02:21:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF98010E10E;
	Wed,  1 Nov 2023 01:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD8D610E10E;
 Wed,  1 Nov 2023 01:21:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D74F8AADD5;
 Wed,  1 Nov 2023 01:21:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Wed, 01 Nov 2023 01:21:25 -0000
Message-ID: <169880168584.29320.2112926583365809182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231101002609.3533731-1-jim.cromie@gmail.com>
In-Reply-To: <20231101002609.3533731-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fix_DRM=5FUSE=5FDYNAMIC=5FDEBUG=3Dy_regression_=28rev5=29?=
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

Series: fix DRM_USE_DYNAMIC_DEBUG=y regression (rev5)
URL   : https://patchwork.freedesktop.org/series/125063/
State : warning

== Summary ==

Error: dim checkpatch failed
4929242ff04f test-dyndbg: fixup CLASSMAP usage error
369c6289e760 dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
298212933902 dyndbg: make ddebug_class_param union members same size
bb9d43099e1f dyndbg: replace classmap list with a vector
9053c45926cc dyndbg: ddebug_apply_class_bitmap - add module arg, select on it
4effa4ae444f dyndbg: split param_set_dyndbg_classes to module/wrapper fns
c60c94fb33fc dyndbg: drop NUM_TYPE_ARRAY
561d6d49eb5d dyndbg: reduce verbose/debug clutter
08c98906a7af dyndbg: silence debugs with no-change updates
268c7816d589 dyndbg: tighten ddebug_class_name() 1st arg type
74408cbc658b dyndbg: tighten fn-sig of ddebug_apply_class_bitmap
b64725e3843a dyndbg: reduce verbose=3 messages in ddebug_add_module
9ebe4353b36f dyndbg-API: remove DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
698fe9e39965 dyndbg-API: fix CONFIG_DRM_USE_DYNAMIC_DEBUG regression
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
+		.map = &(_var),						\
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
42f707d2442b dyndbg: refactor ddebug_classparam_clamp_input
73fc692a7e54 dyndbg-API: promote DYNDBG_CLASSMAP_PARAM to API
0c8745b5707c dyndbg-doc: add classmap info to howto
52d0ffdcbfec dyndbg: reserve flag bit _DPRINTK_FLAGS_PREFIX_CACHED
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: include/linux/dynamic_debug.h:41:
+#define _DPRINTK_FLAGS_PREFIX_CACHED	(1<<7)
                                     	  ^

total: 0 errors, 0 warnings, 1 checks, 7 lines checked
fea64f3506f5 dyndbg: add _DPRINTK_FLAGS_INCL_LOOKUP
31983f133793 dyndbg: refactor *dynamic_emit_prefix
f01c82d0f499 drm: use correct ccflags-y spelling
6645a20cbc0b drm-drivers: DRM_CLASSMAP_USE in 2nd batch of drivers, helpers
b6f3bdc05afd drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN


