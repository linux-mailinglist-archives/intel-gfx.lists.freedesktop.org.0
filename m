Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D573FCF2C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 23:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F466E0CF;
	Tue, 31 Aug 2021 21:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 766766E0CF;
 Tue, 31 Aug 2021 21:33:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56573AA0EA;
 Tue, 31 Aug 2021 21:33:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Aug 2021 21:33:50 -0000
Message-ID: <163044563031.10658.7511855748156348814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
In-Reply-To: <20210831202133.2165222-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_use_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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

Series: use DYNAMIC_DEBUG to implement DRM.debug (rev2)
URL   : https://patchwork.freedesktop.org/series/93914/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7bd3d881384d dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and callbacks
-:210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fsname' - possible side-effects?
#210: FILE: include/linux/dynamic_debug.h:269:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, _var, _desc, ...)	\
+	MODULE_PARM_DESC(fsname, _desc);				\
+	static struct dyndbg_bitmap_param ddcats_##_var =		\
+	{ .bits = &_var, .map = { __VA_ARGS__, { .prefix = NULL }}};	\
+	module_param_cb(fsname, &param_ops_dyndbg, &ddcats_##_var, 0644)

-:210: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '_var' may be better as '(_var)' to avoid precedence issues
#210: FILE: include/linux/dynamic_debug.h:269:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, _var, _desc, ...)	\
+	MODULE_PARM_DESC(fsname, _desc);				\
+	static struct dyndbg_bitmap_param ddcats_##_var =		\
+	{ .bits = &_var, .map = { __VA_ARGS__, { .prefix = NULL }}};	\
+	module_param_cb(fsname, &param_ops_dyndbg, &ddcats_##_var, 0644)

-:216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pfx' - possible side-effects?
#216: FILE: include/linux/dynamic_debug.h:275:
+#define _DD_cat_(pfx)		{ .prefix = pfx, .help = "help for " pfx }

-:217: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pfx' - possible side-effects?
#217: FILE: include/linux/dynamic_debug.h:276:
+#define _DD_cat_help_(pfx)	"\t   " pfx "\t- help for " pfx "\n"

-:286: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#286: FILE: lib/dynamic_debug.c:615:
+	for (i = 0; map->prefix && i < BITS_PER_LONG; map++, i++) {
+

-:325: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#325: FILE: lib/dynamic_debug.c:654:
+};
+/* support DEFINE_DYNAMIC_DEBUG_CATEGORIES users */

total: 0 errors, 0 warnings, 6 checks, 163 lines checked
1c13851cf592 dyndbg: remove spaces in pr_debug "gvt: core:" etc prefixes
-:47: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#47: FILE: drivers/gpu/drm/i915/gvt/debug.h:39:
+	pr_debug("gvt:core: "fmt, ##args)

-:51: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#51: FILE: drivers/gpu/drm/i915/gvt/debug.h:42:
+	pr_debug("gvt:irq: "fmt, ##args)

-:55: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#55: FILE: drivers/gpu/drm/i915/gvt/debug.h:45:
+	pr_debug("gvt:mm: "fmt, ##args)

-:59: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#59: FILE: drivers/gpu/drm/i915/gvt/debug.h:48:
+	pr_debug("gvt:mmio: "fmt, ##args)

-:63: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#63: FILE: drivers/gpu/drm/i915/gvt/debug.h:51:
+	pr_debug("gvt:dpy: "fmt, ##args)

-:67: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#67: FILE: drivers/gpu/drm/i915/gvt/debug.h:54:
+	pr_debug("gvt:el: "fmt, ##args)

-:71: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#71: FILE: drivers/gpu/drm/i915/gvt/debug.h:57:
+	pr_debug("gvt:sched: "fmt, ##args)

-:75: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#75: FILE: drivers/gpu/drm/i915/gvt/debug.h:60:
+	pr_debug("gvt:render: "fmt, ##args)

-:79: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#79: FILE: drivers/gpu/drm/i915/gvt/debug.h:63:
+	pr_debug("gvt:cmd: "fmt, ##args)

total: 0 errors, 0 warnings, 9 checks, 39 lines checked
312e15521c4c i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to create "gvt:core:" etc categories
-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_params.c:275:
+#define _help(key)	"\t    \"" key "\"\t: help for " key "\n"

total: 0 errors, 0 warnings, 1 checks, 48 lines checked
31b744887a91 amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#33: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:46:
+#define _help_(key)	"\t   " key "\t- help for " key "\n"

-:54: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#54: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:67:
+DEFINE_DYNAMIC_DEBUG_CATEGORIES(debug_dc, __debug_dc,
+	DC_DYNDBG_BITMAP_DESC(debug_dc),

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
8afc3d40447e drm_print: add choice to use dynamic debug in drm-debug
-:188: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#188: FILE: drivers/gpu/drm/drm_print.c:61:
+DEFINE_DYNAMIC_DEBUG_CATEGORIES(debug, __drm_debug,
+	DRM_DEBUG_DESC,

-:447: CHECK:LINE_SPACING: Please don't use multiple blank lines
#447: FILE: include/drm/drm_print.h:583:
 
+

total: 0 errors, 0 warnings, 2 checks, 352 lines checked
173bdbb15f52 drm_print: instrument drm_debug_enabled
-:59: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'category' may be better as '(category)' to avoid precedence issues
#59: FILE: include/drm/drm_print.h:405:
+#define drm_debug_enabled(category)			\
+	({						\
+	pr_debug("todo: maybe avoid via dyndbg\n");	\
+	unlikely(__drm_debug & category);		\
+	})

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
b19dac545d36 amdgpu_ucode: reduce number of pr_debug calls
fce7761a8b02 nouveau: fold multiple DRM_DEBUG_DRIVERs together


