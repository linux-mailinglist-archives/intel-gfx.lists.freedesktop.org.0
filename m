Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5462E487303
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 07:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9419C113BAF;
	Fri,  7 Jan 2022 06:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E221113BA6;
 Fri,  7 Jan 2022 06:20:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B1E4A0099;
 Fri,  7 Jan 2022 06:20:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 07 Jan 2022 06:20:23 -0000
Message-ID: <164153642339.24391.5594221014160096172@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220107052942.1349447-1-jim.cromie@gmail.com>
In-Reply-To: <20220107052942.1349447-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dyndbg_=26_drm=2Edebug_to_tracefs?=
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

Series: dyndbg & drm.debug to tracefs
URL   : https://patchwork.freedesktop.org/series/98590/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d9ff9e9bc72 dyndbg: add _DPRINTK_FLAGS_ENABLED
-:23: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#23: FILE: include/linux/dynamic_debug.h:30:
+#define _DPRINTK_FLAGS_PRINTK	(1<<0) /* printk() a message using the format */
                              	  ^

-:71: CHECK:BRACES: braces {} should be used on all arms of this statement
#71: FILE: lib/dynamic_debug.c:213:
+			if (dp->flags & _DPRINTK_FLAGS_ENABLED) {
[...]
-			} else if (modifiers->flags & _DPRINTK_FLAGS_PRINT)
[...]

total: 0 errors, 0 warnings, 2 checks, 52 lines checked
7ae94eab6633 dyndbg: add _DPRINTK_FLAGS_TRACE
-:20: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#20: FILE: include/linux/dynamic_debug.h:40:
+#define _DPRINTK_FLAGS_TRACE		(1<<5)
                             		  ^

total: 0 errors, 0 warnings, 1 checks, 10 lines checked
3ad319c0837b dyndbg: add write-to-tracefs code
-:35: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#35: 
  https://lore.kernel.org/lkml/20200825153338.17061-1-vincent.whitchurch@axis.com/

-:152: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#152: FILE: lib/dynamic_debug.c:705:
+{
+

total: 0 errors, 1 warnings, 1 checks, 240 lines checked
c266a2367803 dyndbg: add trace-events for pr_debug, dev_dbg
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: include/trace/events/dyndbg.h:12:
+TRACE_EVENT(prdbg,
+	TP_PROTO(const struct _ddebug *desc, const char *text, size_t len),

-:55: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#55: FILE: include/trace/events/dyndbg.h:16:
+	TP_STRUCT__entry(

-:59: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#59: FILE: include/trace/events/dyndbg.h:20:
+	TP_fast_assign(

-:65: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#65: FILE: include/trace/events/dyndbg.h:26:
+		if ((len > 0) && (text[len-1] == '\n'))
 		                          ^

-:65: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#65: FILE: include/trace/events/dyndbg.h:26:
+		if ((len > 0) && (text[len-1] == '\n'))

-:78: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#78: FILE: include/trace/events/dyndbg.h:39:
+TRACE_EVENT(devdbg,
+	TP_PROTO(const struct _ddebug *desc, const struct device *dev,

-:83: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#83: FILE: include/trace/events/dyndbg.h:44:
+	TP_STRUCT__entry(

-:87: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#87: FILE: include/trace/events/dyndbg.h:48:
+	TP_fast_assign(

-:93: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#93: FILE: include/trace/events/dyndbg.h:54:
+		if ((len > 0) && (text[len-1] == '\n'))
 		                          ^

-:93: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#93: FILE: include/trace/events/dyndbg.h:54:
+		if ((len > 0) && (text[len-1] == '\n'))

-:138: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev"
#138: FILE: lib/dynamic_debug.c:674:
+	if (dev == NULL)

total: 0 errors, 1 warnings, 11 checks, 219 lines checked
3344f9cc94e4 dyndbg: add desc, dev fields to event record
-:79: CHECK:SPACING: No space is necessary after a cast
#79: FILE: include/trace/events/dyndbg.h:54:
+		__entry->dev = (struct device *) dev;

total: 0 errors, 0 warnings, 1 checks, 45 lines checked
e4c9ac5ada6a dyndbg: add class_id to callsites
-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#124: FILE: include/linux/dynamic_debug.h:140:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
+	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&id, ##__VA_ARGS__);			\
 } while (0)

-:136: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#136: FILE: include/linux/dynamic_debug.h:148:
+#define __dynamic_func_call_no_desc_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
+	if (DYNAMIC_DEBUG_BRANCH(id))					\
+		func(__VA_ARGS__);					\
 } while (0)

-:163: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#163: FILE: include/linux/dynamic_debug.h:174:
+#define _dynamic_func_call_no_desc_cls(fmt, eCat, func, ...)		\

-:191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#191: FILE: lib/dynamic_debug.c:143:
+	v3pr_info("%s: func=\"%s\" file=\"%s\" module=\"%s\" format=\"%.*s\" lineno=%u-%u class=%u\n",
 		 msg,

-:216: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#216: FILE: lib/dynamic_debug.c:318:
 }
+/*

total: 0 errors, 0 warnings, 5 checks, 183 lines checked
03fdf317dcd7 drm_print: condense enum drm_debug_category
c28c0ad8c881 drm_print: add trace_drm_dbg, trace_drm_devdbg events
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

-:94: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#94: FILE: include/trace/events/drm.h:12:
+TRACE_EVENT(drm_debug,
+	TP_PROTO(int drm_debug_category, struct va_format *vaf),

-:98: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#98: FILE: include/trace/events/drm.h:16:
+	TP_STRUCT__entry(

-:103: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#103: FILE: include/trace/events/drm.h:21:
+	TP_fast_assign(

-:110: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#110: FILE: include/trace/events/drm.h:28:
+		if ((len > 0) && (__get_str(msg)[len-1] == '\n'))
 		                                    ^

-:110: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#110: FILE: include/trace/events/drm.h:28:
+		if ((len > 0) && (__get_str(msg)[len-1] == '\n'))

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: include/trace/events/drm.h:38:
+TRACE_EVENT(drm_devdbg,
+	TP_PROTO(const struct device *dev, int drm_debug_category, struct va_format *vaf),

-:124: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#124: FILE: include/trace/events/drm.h:42:
+	TP_STRUCT__entry(

-:130: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#130: FILE: include/trace/events/drm.h:48:
+	TP_fast_assign(

-:138: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#138: FILE: include/trace/events/drm.h:56:
+		if ((len > 0) && (__get_str(msg)[len-1] == '\n'))
 		                                    ^

-:138: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#138: FILE: include/trace/events/drm.h:56:
+		if ((len > 0) && (__get_str(msg)[len-1] == '\n'))

total: 0 errors, 1 warnings, 10 checks, 103 lines checked
a9f58b87212c drm_print: add CONFIG_DRM_USE_DYNAMIC_DEBUG
0d32fa8e1cef drm_print: interpose drm_dev_dbg, __drm_dbg with forwarding macros
-:81: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#81: FILE: include/drm/drm_print.h:338:
+void __drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...);

-:88: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#88: FILE: include/drm/drm_print.h:386:
+#define drm_dev_dbg(dev, eCat, fmt, ...)				\

total: 0 errors, 0 warnings, 2 checks, 59 lines checked
527fca78581a drm_print: wrap drm_dev_dbg in _dynamic_func_call_no_desc
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
    453                 DRM_DEV_DEBUG(adev->dev, "ring test on %s succeeded\n",

-:57: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#57: FILE: include/drm/drm_print.h:390:
+#define drm_dev_dbg(dev, eCat, fmt, ...)				\

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#57: FILE: include/drm/drm_print.h:390:
+#define drm_dev_dbg(dev, eCat, fmt, ...)				\
+	_dynamic_func_call_no_desc(fmt, __drm_dev_dbg,			\
+				   dev, eCat, fmt, ##__VA_ARGS__)

total: 0 errors, 1 warnings, 2 checks, 14 lines checked
a07814b4ad7b drm_print: wrap drm_dbg in _dynamic_func_call_no_desc
-:54: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#54: FILE: include/drm/drm_print.h:332:
 }
+/*

-:84: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#84: FILE: include/drm/drm_print.h:529:
+#define __drm_dbg(eCat, fmt, ...)					\

-:84: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#84: FILE: include/drm/drm_print.h:529:
+#define __drm_dbg(eCat, fmt, ...)					\
+	_dynamic_func_call_no_desc(fmt, ___drm_dbg,			\
+				   eCat, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 3 checks, 57 lines checked
40a44350f5f7 drm_print: refine drm_debug_enabled for dyndbg+jump-label
85fc4e083676 drm_print: prefer bare printk KERN_DEBUG on generic fn
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
 462583   36604   54592 553779   87333 /lib/modules/5.16.0-rc4-lm1-00008-ged3eac8ceeea/kernel/drivers/gpu/drm/drm.ko

-:51: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#51: FILE: drivers/gpu/drm/drm_print.c:167:
+	printk(KERN_DEBUG "%s %pV", p->prefix, vaf);

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
ac324a3a653f drm_print: use _dynamic_func_call_no_desc_cls
-:31: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#31: FILE: include/drm/drm_print.h:418:
+	_dynamic_func_call_no_desc_cls(fmt, eCat, __drm_dev_dbg,	\

total: 0 errors, 0 warnings, 1 checks, 31 lines checked
c6748508c87b drm_print: add struct _ddebug desc to drm_*dbg
-:59: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#59: FILE: drivers/gpu/drm/drm_print.c:277:
+			dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",

-:69: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#69: FILE: drivers/gpu/drm/drm_print.c:284:
+			printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",

-:106: CHECK:CAMELCASE: Avoid CamelCase: <eCat>
#106: FILE: include/drm/drm_print.h:415:
+	__drm_dev_dbg(NULL, dev, eCat, fmt, ##__VA_ARGS__)

total: 0 errors, 2 warnings, 1 checks, 94 lines checked
1b4f5d97296e drm_print: add struct _ddebug *desc to trace-drm-*() params
-:77: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#77: FILE: include/trace/events/drm.h:28:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')
 		                                     ^

-:77: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#77: FILE: include/trace/events/drm.h:28:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')

-:77: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len < 256'
#77: FILE: include/trace/events/drm.h:28:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')

-:114: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#114: FILE: include/trace/events/drm.h:56:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')
 		                                     ^

-:114: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len > 0'
#114: FILE: include/trace/events/drm.h:56:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')

-:114: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'len < 256'
#114: FILE: include/trace/events/drm.h:56:
+		if ((len > 0) && (len < 256) && p[len-1] == '\n')

total: 0 errors, 0 warnings, 6 checks, 97 lines checked
39d23627c40a dyndbg: add DEFINE_DYNAMIC_DEBUG_CLASSBITS macro and callbacks
-:115: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fsname' - possible side-effects?
#115: FILE: include/linux/dynamic_debug.h:281:
+#define DEFINE_DYNAMIC_DEBUG_CLASSBITS(fsname, _var, desc, ...)		\
+	MODULE_PARM_DESC(fsname, desc);					\
+	static struct dyndbg_classbits_param ddcats_##_var = {		\
+		.bits = &(_var), .classes = { __VA_ARGS__, 0 } };	\
+	module_param_cb(fsname, &param_ops_dyndbg_classbits, &ddcats_##_var, 0644)

-:126: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#126: FILE: include/linux/dynamic_debug.h:292:
+	BUILD_BUG_ON_MSG(1, "CONFIG_DYNAMIC_DEBUG|_CORE && -DDYNAMIC_DEBUG_MODULE needed to use this macro: " #fsname #var)

total: 0 errors, 1 warnings, 1 checks, 144 lines checked
da8aeef5fed0 drm_print: use DEFINE_DYNAMIC_DEBUG_CLASSBITS for drm.debug
-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/drm_print.c:61:
+DEFINE_DYNAMIC_DEBUG_CLASSBITS(debug, __drm_debug,
+	"enable drm.debug categories - 1 bit per category",

total: 0 errors, 0 warnings, 1 checks, 40 lines checked


