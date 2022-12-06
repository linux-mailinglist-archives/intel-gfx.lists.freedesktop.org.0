Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9E0643B3D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 03:17:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544BB10E2F5;
	Tue,  6 Dec 2022 02:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89AC410E2F0;
 Tue,  6 Dec 2022 02:16:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BC27A0078;
 Tue,  6 Dec 2022 02:16:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Tue, 06 Dec 2022 02:16:58 -0000
Message-ID: <167029301847.3375.16901671131501984394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221206003424.592078-1-jim.cromie@gmail.com>
In-Reply-To: <20221206003424.592078-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM=5FUSE=5FDYNAMIC=5FDEBUG_regression?=
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

Series: DRM_USE_DYNAMIC_DEBUG regression
URL   : https://patchwork.freedesktop.org/series/111651/
State : warning

== Summary ==

Error: dim checkpatch failed
8d78d81edb74 test-dyndbg: fixup CLASSMAP usage error
a526555f2fee test-dyndbg: show that DEBUG enables prdbgs at compiletime
69a3d199c77b dyndbg: fix readback value on LEVEL_NAMES interfaces
-:43: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: b9400852c080 ("dyndbg: add drm.debug style (drm/parameters/debug) bitmap support")'
#43: 
Fixes: b9400852c080 (dyndbg: add drm.debug style (drm/parameters/debug) bitmap support)

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
554c7d4e3228 dyndbg: replace classmap list with a vector
6363d68be8a0 dyndbg: make ddebug_apply_class_bitmap more selective
cb8c90d8fccb dyndbg: dynamic_debug_init - use pointer inequality, not strcmp
ef959da3c2ac dyndbg: drop NUM_TYPE_ARRAY
03750f80b032 dyndbg: reduce verbose/debug clutter
f0f3d3b03b78 dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP with DYNDBG_CLASSMAP(_DEFINE|_USE)
-:46: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#46: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:194:
+DYNDBG_CLASSMAP_USE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/display/drm_dp_helper.c:46:
+DYNDBG_CLASSMAP_USE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/drm_crtc_helper.c:55:
+DYNDBG_CLASSMAP_USE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:111: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#111: FILE: drivers/gpu/drm/drm_print.c:60:
+DYNDBG_CLASSMAP_DEFINE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/i915_params.c:34:
+DYNDBG_CLASSMAP_USE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:147: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#147: FILE: drivers/gpu/drm/nouveau/nouveau_drm.c:76:
+DYNDBG_CLASSMAP_USE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
 			"DRM_UT_CORE",

-:202: WARNING:TYPO_SPELLING: 'wierd' may be misspelled - perhaps 'weird'?
#202: FILE: include/linux/dynamic_debug.h:117:
+ * it should help regularize the admittedly wierd sharing by identical
                                             ^^^^^

total: 0 errors, 1 warnings, 6 checks, 188 lines checked
b3c275ffb38c dyndbg-API: specialize DYNDBG_CLASSMAP_(DEFINE|USE)
-:106: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#106: 
but doesnt alter any callsites.
    ^^^^^^

-:170: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#170: FILE: include/linux/dynamic_debug.h:120:
+};
+/**

-:180: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#180: FILE: include/linux/dynamic_debug.h:128:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname, ...)				\
+	extern struct ddebug_class_map _var[];				\
+	static struct ddebug_class_user __used				\
+	__section("__dyndbg_class_refs") _uname = {			\
+		.user_mod_name = KBUILD_MODNAME,			\
+		.map = _var,						\
+	}

-:208: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#208: FILE: kernel/module/main.c:2115:
+					sizeof(*info->dyndbg.class_refs), &info->dyndbg.num_class_refs);

-:208: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#208: FILE: kernel/module/main.c:2115:
+	info->dyndbg.class_refs = section_objs(info, "__dyndbg_class_refs",
+					sizeof(*info->dyndbg.class_refs), &info->dyndbg.num_class_refs);

-:220: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#220: FILE: lib/dynamic_debug.c:46:
+extern struct ddebug_class_user __start___dyndbg_class_refs[];

-:221: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#221: FILE: lib/dynamic_debug.c:47:
+extern struct ddebug_class_user __stop___dyndbg_class_refs[];

-:304: CHECK:BRACES: braces {} should be used on all arms of this statement
#304: FILE: lib/dynamic_debug.c:1222:
+	if (!strncmp(cm->mod_name, dcp->map->mod_name, strlen(cm->mod_name))) {
[...]
+	} else
[...]

-:307: CHECK:BRACES: Unbalanced braces around else statement
#307: FILE: lib/dynamic_debug.c:1225:
+	} else

-:378: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#378: FILE: lib/dynamic_debug.c:1294:
+	for (i = 0, cli = di->class_refs; i < di->num_class_refs; i++, cli++) {
+

-:393: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#393: FILE: lib/dynamic_debug.c:1309:
+		if (!strcmp(cli->user_mod_name, dt->mod_name)) {
+

total: 0 errors, 4 warnings, 7 checks, 311 lines checked
de7be92e3d3d dyndbg-API: DYNDBG_CLASSMAP_USE drop extra args
-:173: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_var' - possible side-effects?
#173: FILE: include/linux/dynamic_debug.h:132:
+#define DYNDBG_CLASSMAP_USE_(_var, _uname)				\
 	extern struct ddebug_class_map _var[];				\
+	struct ddebug_class_user __used					\
 	__section("__dyndbg_class_refs") _uname = {			\
 		.user_mod_name = KBUILD_MODNAME,			\
 		.map = _var,						\

total: 0 errors, 0 warnings, 1 checks, 136 lines checked
d60f21cf5cef dyndbg-API: DYNDBG_CLASSMAP_DEFINE() improvements
-:56: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#56: 
	module_param_cb(_flags##_##_model, &param_ops_dyndbg_classes, &_flags##_model, 0600)

-:144: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#144: 
new file mode 100644

-:149: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#149: FILE: include/linux/map.h:1:
+/*

-:173: ERROR:SPACING: space prohibited before that ',' (ctx:WxE)
#173: FILE: include/linux/map.h:25:
+#define iMAP_COMMA ,
                    ^

-:173: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#173: FILE: include/linux/map.h:25:
+#define iMAP_COMMA ,

-:175: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#175: FILE: include/linux/map.h:27:
+#define iMAP_GET_END2() 0, iMAP_END

-:178: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#178: FILE: include/linux/map.h:30:
+#define iMAP_NEXT0(test, next, ...) next iMAP_OUT

-:182: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#182: FILE: include/linux/map.h:34:
+#define iMAP0(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP1)(f, peek, __VA_ARGS__)

-:182: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#182: FILE: include/linux/map.h:34:
+#define iMAP0(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP1)(f, peek, __VA_ARGS__)

-:182: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'peek' - possible side-effects?
#182: FILE: include/linux/map.h:34:
+#define iMAP0(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP1)(f, peek, __VA_ARGS__)

-:183: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#183: FILE: include/linux/map.h:35:
+#define iMAP1(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP0)(f, peek, __VA_ARGS__)

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#183: FILE: include/linux/map.h:35:
+#define iMAP1(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP0)(f, peek, __VA_ARGS__)

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'peek' - possible side-effects?
#183: FILE: include/linux/map.h:35:
+#define iMAP1(f, x, peek, ...) f(x) iMAP_NEXT(peek, iMAP0)(f, peek, __VA_ARGS__)

-:188: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#188: FILE: include/linux/map.h:40:
+#define iMAP_LIST0(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST1)(f, peek, __VA_ARGS__)

-:188: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#188: FILE: include/linux/map.h:40:
+#define iMAP_LIST0(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST1)(f, peek, __VA_ARGS__)

-:188: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'peek' - possible side-effects?
#188: FILE: include/linux/map.h:40:
+#define iMAP_LIST0(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST1)(f, peek, __VA_ARGS__)

-:189: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#189: FILE: include/linux/map.h:41:
+#define iMAP_LIST1(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST0)(f, peek, __VA_ARGS__)

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#189: FILE: include/linux/map.h:41:
+#define iMAP_LIST1(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST0)(f, peek, __VA_ARGS__)

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'peek' - possible side-effects?
#189: FILE: include/linux/map.h:41:
+#define iMAP_LIST1(f, x, peek, ...) f(x) iMAP_LIST_NEXT(peek, iMAP_LIST0)(f, peek, __VA_ARGS__)

total: 8 errors, 3 warnings, 8 checks, 191 lines checked
6349e3ae481a drm_print: fix stale macro-name in comment
67e31054b47c dyndbg: unwrap __ddebug_add_module inner function NOTYET
-:15: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '6afa31514977', maybe rebased or not pulled?
#15: 
Fixes: 6afa31514977 ("dyndbg: unwrap __ddebug_add_module inner function")

total: 0 errors, 1 warnings, 0 checks, 36 lines checked
8a430b9dc8a7 dyndbg: ddebug_sanity()
-:87: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#87: FILE: lib/dynamic_debug.c:1304:
+			v2pr_info("NO CLI name %px %px\n", cli->map, cli->map->mod_name);

-:106: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#106: FILE: lib/dynamic_debug.c:1339:
+		v2pr_info("class[%d]: module:%s base:%d len:%d ty:%d cm:%px\n",
+			  i, cm->mod_name, cm->base, cm->length, cm->map_type, cm);

-:114: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#114: FILE: lib/dynamic_debug.c:1347:
+		v2pr_info("class-ref[%d]: cli:%px map:%px nm:%px nm:%s\n", i, cli,
+			  cli->map, cli->user_mod_name, cli->user_mod_name);

total: 0 errors, 3 warnings, 0 checks, 72 lines checked
49fee09ae90c dyndbg: mess-w-dep-class
-:31: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 18 lines checked
dea8951c8532 dyndbg: miss-on HACK
-:27: CHECK:BRACES: Unbalanced braces around else statement
#27: FILE: lib/dynamic_debug.c:1325:
+		} else

-:31: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 1 checks, 17 lines checked


