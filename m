Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 044FF3EBA2D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 18:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0995F6E887;
	Fri, 13 Aug 2021 16:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B8E16E887;
 Fri, 13 Aug 2021 16:35:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 491A8A882E;
 Fri, 13 Aug 2021 16:35:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 16:35:51 -0000
Message-ID: <162887255126.17679.17812350827987640893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210813151734.1236324-1-jim.cromie@gmail.com>
In-Reply-To: <20210813151734.1236324-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dyndbg=3A_add_DEFINE=5FDYNAMIC=5FDEBUG=5FCATEGORIES_and_use?=
 =?utf-8?q?_in_DRM?=
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

Series: dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and use in DRM
URL   : https://patchwork.freedesktop.org/series/93683/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9735d1bd2f6a moduleparam: add data member to struct kernel_param
-:62: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 0 checks, 35 lines checked
918363f529da dyndbg: add DEFINE_DYNAMIC_DEBUG_CATEGORIES and callbacks
-:42: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#42: 
Add DEFINE_DYNAMIC_DEBUG_CATEGORIES() described above, and a do-nothing stub.

-:72: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#72: 
"1","2","3"		2 doesnt imply 1.
           		  ^^^^^^

-:90: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#90: 
":" doesnt terminate the search-space, the trailing space does.
    ^^^^^^

-:114: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#114: 
 - "drm:kms:*"		doesnt work, no wildcard on format atm.
              		^^^^^^

-:188: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fsname' - possible side-effects?
#188: FILE: include/linux/dynamic_debug.h:264:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, var, _desc, ...)	\
+	MODULE_PARM_DESC(fsname, _desc);				\
+	static struct dyndbg_bitdesc const dyndbg_cats_##fsname[] =	\
+		{ __VA_ARGS__, { NULL, NULL } };			\
+	module_param_cbd(fsname, &param_ops_dyndbg, &var, 0644,		\
+			 &dyndbg_cats_##fsname);

-:188: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'var' may be better as '(var)' to avoid precedence issues
#188: FILE: include/linux/dynamic_debug.h:264:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, var, _desc, ...)	\
+	MODULE_PARM_DESC(fsname, _desc);				\
+	static struct dyndbg_bitdesc const dyndbg_cats_##fsname[] =	\
+		{ __VA_ARGS__, { NULL, NULL } };			\
+	module_param_cbd(fsname, &param_ops_dyndbg, &var, 0644,		\
+			 &dyndbg_cats_##fsname);

-:188: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#188: FILE: include/linux/dynamic_debug.h:264:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, var, _desc, ...)	\
+	MODULE_PARM_DESC(fsname, _desc);				\
+	static struct dyndbg_bitdesc const dyndbg_cats_##fsname[] =	\
+		{ __VA_ARGS__, { NULL, NULL } };			\
+	module_param_cbd(fsname, &param_ops_dyndbg, &var, 0644,		\
+			 &dyndbg_cats_##fsname);

-:190: WARNING:STATIC_CONST: Move const after static - use 'static const struct dyndbg_bitdesc'
#190: FILE: include/linux/dynamic_debug.h:266:
+	static struct dyndbg_bitdesc const dyndbg_cats_##fsname[] =	\

-:195: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pfx' - possible side-effects?
#195: FILE: include/linux/dynamic_debug.h:271:
+#define _DD_cat_(pfx)		{ .prefix = pfx, .help = "help for " pfx }

-:196: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pfx' - possible side-effects?
#196: FILE: include/linux/dynamic_debug.h:272:
+#define _DD_cat_help_(pfx)	"\t   " pfx "\t- help for " pfx "\n"

-:200: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#200: FILE: include/linux/dynamic_debug.h:276:
+#define DEFINE_DYNAMIC_DEBUG_CATEGORIES(fsname, var, bitmap_desc, ...) \
+	MODULE_PARM_DESC(fsname, "auto: " bitmap_desc);

-:240: CHECK:SPACING: No space is necessary after a cast
#240: FILE: lib/dynamic_debug.c:1173:
+	struct dyndbg_bitdesc *bitmap = (struct dyndbg_bitdesc *) kp->data;

-:250: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#250: FILE: lib/dynamic_debug.c:1183:
+	for (i = 0; !!bitmap[i].prefix; i++) {
+

-:282: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#282: FILE: lib/dynamic_debug.c:1215:
+};
+/* support DEFINE_DYNAMIC_DEBUG_CATEGORIES users */

-:283: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 7 warnings, 7 checks, 139 lines checked
52fe10f828c0 i915/gvt: remove spaces in pr_debug "gvt: core:" etc prefixes
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
d1de5f57f0f1 i915/gvt: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to create "gvt:core:" etc categories
-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/i915_params.c:275:
+#define _help(key)	"\t    \"" key "\"\t: help for " key "\n"

-:83: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 1 checks, 45 lines checked
cc4308e46704 amdgpu: use DEFINE_DYNAMIC_DEBUG_CATEGORIES to control categorized pr_debugs
-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'key' - possible side-effects?
#34: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:46:
+#define _help_(key)	"\t   " key "\t- help for " key "\n"

-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/amd/display/dc/core/dc_debug.c:67:
+DEFINE_DYNAMIC_DEBUG_CATEGORIES(debug_dc, __debug_dc,
+	DC_DYNDBG_BITMAP_DESC(debug_dc),

total: 0 errors, 0 warnings, 2 checks, 51 lines checked
8ded13656ce8 drm_print: add choice to use dynamic debug in drm-debug
-:167: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#167: FILE: drivers/gpu/drm/drm_print.c:61:
+DEFINE_DYNAMIC_DEBUG_CATEGORIES(debug, __drm_debug,
+	DRM_DEBUG_DESC,

-:416: CHECK:LINE_SPACING: Please don't use multiple blank lines
#416: FILE: include/drm/drm_print.h:582:
 
+

-:460: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 0 warnings, 2 checks, 329 lines checked
089e2b7e8515 amdgpu_ucode: reduce number of pr_debug calls
f36b9555c312 dyndbg: RFC add tracer facility RFC
-:41: WARNING:TYPO_SPELLING: 'doesnt' may be misspelled - perhaps 'doesn't'?
#41: 
- register sets empty slot, doesnt overwrite
                            ^^^^^^

-:126: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#126: FILE: include/linux/dynamic_debug.h:31:
+#define _DPRINTK_FLAGS_PRINT		(1<<0) /* printk() a message */
                             		  ^

-:127: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#127: FILE: include/linux/dynamic_debug.h:32:
+#define _DPRINTK_FLAGS_PRINT_TRACE	(1<<5) /* call (*tracer) */
                                   	  ^

-:149: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#149: FILE: include/linux/dynamic_debug.h:298:
+int dynamic_debug_register_tracer(const char *query, const char *mod,
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf));

-:149: WARNING:SPACING: Unnecessary space before function pointer arguments
#149: FILE: include/linux/dynamic_debug.h:298:
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf));

-:161: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#161: FILE: include/linux/dynamic_debug.h:310:
+int dynamic_debug_unregister_tracer(const char *query, const char *mod,
+	int (*cookie) (const char *fmt, char *prefix, char *label, struct va_format *vaf));

-:161: WARNING:SPACING: Unnecessary space before function pointer arguments
#161: FILE: include/linux/dynamic_debug.h:310:
+	int (*cookie) (const char *fmt, char *prefix, char *label, struct va_format *vaf));

-:172: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#172: FILE: lib/Kconfig.debug:2489:
+config TEST_DYNAMIC_DEBUG

-:226: CHECK:BRACES: braces {} should be used on all arms of this statement
#226: FILE: lib/dynamic_debug.c:213:
+				if (!tracer)
[...]
+				else {
[...]

-:228: CHECK:BRACES: Unbalanced braces around else statement
#228: FILE: lib/dynamic_debug.c:215:
+				else {

-:230: CHECK:BRACES: braces {} should be used on all arms of this statement
#230: FILE: lib/dynamic_debug.c:217:
+					if (!dp->tracer) {
[...]
+					else if (tracer == dp->tracer)
[...]
+					else
[...]

-:234: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#234: FILE: lib/dynamic_debug.c:221:
+					}
+					else if (tracer == dp->tracer)

-:240: CHECK:BRACES: braces {} should be used on all arms of this statement
#240: FILE: lib/dynamic_debug.c:227:
+				if (!tracer)
[...]
+				else {
[...]

-:242: CHECK:BRACES: Unbalanced braces around else statement
#242: FILE: lib/dynamic_debug.c:229:
+				else {

-:244: CHECK:BRACES: braces {} should be used on all arms of this statement
#244: FILE: lib/dynamic_debug.c:231:
+					if (!dp->tracer)
[...]
+					else if (dp->tracer == tracer) {
[...]
+					else
[...]

-:251: ERROR:ELSE_AFTER_BRACE: else should follow close brace '}'
#251: FILE: lib/dynamic_debug.c:238:
+					}
+					else

-:258: CHECK:BRACES: braces {} should be used on all arms of this statement
#258: FILE: lib/dynamic_debug.c:243:
+			if (dp->flags & _DPRINTK_ENABLED) {
[...]
-			} else if (modifiers->flags & _DPRINTK_FLAGS_PRINT)
[...]

-:353: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#353: FILE: lib/dynamic_debug.c:675:
+		printk(KERN_DEBUG "%s%pV", buf, &vaf);

-:356: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#356: FILE: lib/dynamic_debug.c:678:
+	if (descriptor->flags & _DPRINTK_FLAGS_PRINT_TRACE) {
+

-:361: WARNING:TYPO_SPELLING: 'shouldnt' may be misspelled - perhaps 'shouldn't'?
#361: FILE: lib/dynamic_debug.c:683:
+		/* else shouldnt matter, but maybe for consistency */
 		        ^^^^^^^^

-:399: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#399: FILE: lib/dynamic_debug.c:1262:
+int dynamic_debug_register_tracer(const char *query, const char *mod,
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf))

-:399: WARNING:SPACING: Unnecessary space before function pointer arguments
#399: FILE: lib/dynamic_debug.c:1262:
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf))

-:406: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#406: FILE: lib/dynamic_debug.c:1269:
+int dynamic_debug_unregister_tracer(const char *query, const char *mod,
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf))

-:406: WARNING:SPACING: Unnecessary space before function pointer arguments
#406: FILE: lib/dynamic_debug.c:1269:
+	int (*tracer) (const char *fmt, char *prefix, char *label, struct va_format *vaf))

-:412: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#412: 
new file mode 100644

-:438: ERROR:INITIALISED_STATIC: do not initialise statics to 0
#438: FILE: lib/test_dynamic_debug.c:22:
+static int trace_ct = 0;

-:439: ERROR:INITIALISED_STATIC: do not initialise statics to 0
#439: FILE: lib/test_dynamic_debug.c:23:
+static int test_ct = 0;

-:440: ERROR:INITIALISED_STATIC: do not initialise statics to 0
#440: FILE: lib/test_dynamic_debug.c:24:
+static int errors = 0;

-:441: ERROR:INITIALISED_STATIC: do not initialise statics to 0
#441: FILE: lib/test_dynamic_debug.c:25:
+static int verbose = 0;

-:443: CHECK:LINE_SPACING: Please don't use multiple blank lines
#443: FILE: lib/test_dynamic_debug.c:27:
+
+

-:478: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'expect_count', this function's name, in a string
#478: FILE: lib/test_dynamic_debug.c:62:
+		pr_err("expect_count: want %d, got %d: %s\n", want, trace_ct, story);

-:494: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'do_debugging', this function's name, in a string
#494: FILE: lib/test_dynamic_debug.c:78:
+	pr_info(" do_debugging %d time(s)\n", reps);

-:546: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#546: FILE: lib/test_dynamic_debug.c:130:
+struct exec_test exec_tests[] = {
+

-:608: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#608: FILE: lib/test_dynamic_debug.c:192:
+struct register_test register_tests[] = {
+

-:635: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#635: FILE: lib/test_dynamic_debug.c:219:
+	match_count = dynamic_debug_unregister_tracer(

-:643: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#643: FILE: lib/test_dynamic_debug.c:227:
+	match_count = dynamic_debug_unregister_tracer(

-:663: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 7 errors, 11 warnings, 19 checks, 514 lines checked


