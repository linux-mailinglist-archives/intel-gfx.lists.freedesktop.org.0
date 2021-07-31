Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B68B3DC879
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 23:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E534E6E907;
	Sat, 31 Jul 2021 21:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 918346E907;
 Sat, 31 Jul 2021 21:52:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67A80AA915;
 Sat, 31 Jul 2021 21:52:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 31 Jul 2021 21:52:41 -0000
Message-ID: <162776836140.3955.17284049668375127785@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210731214211.657280-1-jim.cromie@gmail.com>
In-Reply-To: <20210731214211.657280-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_use_dyndbg_in_drm=5Fprint_=28rev3=29?=
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

Series: drm: use dyndbg in drm_print (rev3)
URL   : https://patchwork.freedesktop.org/series/92542/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ab95444b671f moduleparam: add data member to struct kernel_param
7193036bdfae dyndbg: add dyndbg-bitmap definer and callbacks
-:89: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#89: FILE: include/linux/dynamic_debug.h:260:
+#define DEFINE_DYNDBG_BITMAP(name, value, bitmap_desc, ...)	\
+	struct dyndbg_bitdesc dyndbg_classes_##name[] =		\
+	{ __VA_ARGS__, { NULL, NULL } };			\
+	module_param_cbd(name, &param_ops_dyndbg, value, 0644,	\
+			 &dyndbg_classes_##name);

-:117: CHECK:SPACING: No space is necessary after a cast
#117: FILE: lib/dynamic_debug.c:1168:
+	struct dyndbg_bitdesc *bitmap = (struct dyndbg_bitdesc *) kp->data;

-:131: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#131: FILE: lib/dynamic_debug.c:1182:
+	for (bitsmax = 0; bitmap[bitsmax].prefix; bitsmax++);

-:134: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#134: FILE: lib/dynamic_debug.c:1185:
+	for_each_set_bit(bitpos, &changes, min(--bitsmax, 64)) {
+

total: 1 errors, 1 warnings, 2 checks, 106 lines checked
f73667a8cacb i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
-:43: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#43: FILE: drivers/gpu/drm/i915/gvt/debug.h:39:
+	pr_debug("gvt:core: "fmt, ##args)

-:47: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#47: FILE: drivers/gpu/drm/i915/gvt/debug.h:42:
+	pr_debug("gvt:irq: "fmt, ##args)

-:51: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#51: FILE: drivers/gpu/drm/i915/gvt/debug.h:45:
+	pr_debug("gvt:mm: "fmt, ##args)

-:55: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#55: FILE: drivers/gpu/drm/i915/gvt/debug.h:48:
+	pr_debug("gvt:mmio: "fmt, ##args)

-:59: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#59: FILE: drivers/gpu/drm/i915/gvt/debug.h:51:
+	pr_debug("gvt:dpy: "fmt, ##args)

-:63: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#63: FILE: drivers/gpu/drm/i915/gvt/debug.h:54:
+	pr_debug("gvt:el: "fmt, ##args)

-:67: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#67: FILE: drivers/gpu/drm/i915/gvt/debug.h:57:
+	pr_debug("gvt:sched: "fmt, ##args)

-:71: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#71: FILE: drivers/gpu/drm/i915/gvt/debug.h:60:
+	pr_debug("gvt:render: "fmt, ##args)

-:75: CHECK:CONCATENATED_STRING: Concatenated strings should use spaces between elements
#75: FILE: drivers/gpu/drm/i915/gvt/debug.h:63:
+	pr_debug("gvt:cmd: "fmt, ##args)

total: 0 errors, 0 warnings, 9 checks, 39 lines checked
816d1412b3f8 i915/gvt: control pr_debug("gvt:")s with bits in parameters/debug_gvt
-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/i915_params.c:273:
+#define _help(key)	"\t\"" key "\"\t: help for " key "\n"

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/i915_params.c:274:
+#define cmd_help(key)	{ .prefix = key, .help = key ": help for " key }

-:76: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#76: FILE: drivers/gpu/drm/i915/i915_params.c:292:
+DEFINE_DYNDBG_BITMAP(debug_gvt, &__gvt_debug,
+		   I915_DYNDBG_PARM_DESC(debug_gvt),

total: 0 errors, 0 warnings, 3 checks, 53 lines checked
7b12f8b286e8 drm/print: add choice to use dynamic debug in drm-debug
-:93: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#93: 
 - "1","2","3" are allowed, 1-9 is effective max. 2 doesnt imply 1.
                                                    ^^^^^^

-:344: CHECK:LINE_SPACING: Please don't use multiple blank lines
#344: FILE: include/drm/drm_print.h:548:
 
+

total: 0 errors, 1 warnings, 1 checks, 226 lines checked
04b4dd37cb1c amdgpu: define a dydbg-bitmap to control categorized pr_debugs
-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#30: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:43:
+#define _help(key)	"\t\t" key " : help for " key "\n"

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#31: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:44:
+#define cmd_help(key)	{ .prefix = key, .help = "help for " key }

total: 0 errors, 0 warnings, 2 checks, 49 lines checked


