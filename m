Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C15295F6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 02:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0F710E032;
	Tue, 17 May 2022 00:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E93110E032;
 Tue, 17 May 2022 00:20:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35FE7AADD7;
 Tue, 17 May 2022 00:20:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Tue, 17 May 2022 00:20:58 -0000
Message-ID: <165274685818.31034.14224239417969369359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220516225640.3102269-1-jim.cromie@gmail.com>
In-Reply-To: <20220516225640.3102269-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM=2Edebug_on_DYNAMIC=5FDEBUG=2C_add_trace_events?=
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

Series: DRM.debug on DYNAMIC_DEBUG, add trace events
URL   : https://patchwork.freedesktop.org/series/104052/
State : warning

== Summary ==

Error: dim checkpatch failed
9b925049d3f8 dyndbg: fix static_branch manipulation
7a33c56c8d24 dyndbg: show both old and new in change-info
3838cafa7f32 dyndbg: fix module.dyndbg handling
d0c698a826fb dyndbg: drop EXPORTed dynamic_debug_exec_queries
323eeca8bd78 dyndbg: add exclusive class_id to pr_debug callsites
-:85: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#85: FILE: include/linux/dynamic_debug.h:139:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
+	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&id, ##__VA_ARGS__);			\
 } while (0)

-:95: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#95: FILE: include/linux/dynamic_debug.h:145:
+#define __dynamic_func_call_no_desc_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
+	if (DYNAMIC_DEBUG_BRANCH(id))					\
+		func(__VA_ARGS__);					\
 } while (0)

total: 0 errors, 0 warnings, 2 checks, 101 lines checked
b00e307b0e6c dyndbg: add dynamic_debug_(un)register_classes
1dbc3121df14 dyndbg: validate class FOO on module
0444535e4efd dyndbg: add drm.debug style bitmap support
-:135: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#135: FILE: lib/dynamic_debug.c:646:
+	for (i = 0; i < dcp->map->length; i++) {
+

total: 0 errors, 0 warnings, 1 checks, 122 lines checked
100ca6d47784 Doc/dyndbg: document new class class_name query support
8a28855c36d5 dyndbg: let query-modname override defaulting modname
da5aa3351514 dyndbg: support symbolic class-names in bitmap
7ef98167d65f dyndbg: change zero-or-one classes-map to maps list
b9a15e133de2 dyndbg: add __pr_debug_cls(class, fmt, ...)
-:26: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#26: FILE: include/linux/dynamic_debug.h:219:
+#define dynamic_pr_debug_cls(cls, fmt, ...)				\
+	_dynamic_func_call_cls(cls, fmt, __dynamic_pr_debug,		\
+			   pr_fmt(fmt), ##__VA_ARGS__)

total: 0 errors, 0 warnings, 1 checks, 19 lines checked
488ac7361b58 dyndbg: add test_dynamic_debug module
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:160: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#160: FILE: lib/test_dynamic_debug.c:58:
+EXPORT_SYMBOL(bits_1p);

-:161: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#161: FILE: lib/test_dynamic_debug.c:59:
+EXPORT_SYMBOL(bits_1t);

-:177: CHECK:LINE_SPACING: Please don't use multiple blank lines
#177: FILE: lib/test_dynamic_debug.c:75:
+
+

-:178: CHECK:CAMELCASE: Avoid CamelCase: <Foo>
#178: FILE: lib/test_dynamic_debug.c:76:
+enum cat2 { Foo = 8, Bar, Buzz };

-:178: CHECK:CAMELCASE: Avoid CamelCase: <Bar>
#178: FILE: lib/test_dynamic_debug.c:76:
+enum cat2 { Foo = 8, Bar, Buzz };

-:178: CHECK:CAMELCASE: Avoid CamelCase: <Buzz>
#178: FILE: lib/test_dynamic_debug.c:76:
+enum cat2 { Foo = 8, Bar, Buzz };

-:183: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#183: FILE: lib/test_dynamic_debug.c:81:
+EXPORT_SYMBOL(bits_2p);

-:184: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#184: FILE: lib/test_dynamic_debug.c:82:
+EXPORT_SYMBOL(bits_2t);

-:200: CHECK:LINE_SPACING: Please don't use multiple blank lines
#200: FILE: lib/test_dynamic_debug.c:98:
+
+

-:206: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#206: FILE: lib/test_dynamic_debug.c:104:
+EXPORT_SYMBOL(bits_3p);

-:207: WARNING:EXPORT_SYMBOL: EXPORT_SYMBOL(foo); should immediately follow its function/variable
#207: FILE: lib/test_dynamic_debug.c:105:
+EXPORT_SYMBOL(bits_3t);

total: 0 errors, 7 warnings, 5 checks, 203 lines checked
1fca523c7a63 drm: POC drm on dyndbg - map class-names to drm_debug_category's
-:97: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#97: FILE: drivers/gpu/drm/i915/i915_module.c:51:
+}
+static void i915_ddebug_classes_unregister(void)

total: 0 errors, 0 warnings, 1 checks, 96 lines checked
2f8b28f3616e drm/print: POC drm on dyndbg - use bitmap
062c73ac0661 drm_print: condense enum drm_debug_category
7699f77d2bfc drm_print: interpose drm_*dbg with forwarding macros
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: include/drm/drm_print.h:343:
+void __drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...);

total: 0 errors, 0 warnings, 1 checks, 59 lines checked
cf749a29838e drm_print: wrap drm_*_dbg in dyndbg descriptor factory macro
-:83: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#83: FILE: include/drm/drm_print.h:395:
+#define drm_dev_dbg(dev, cat, fmt, ...)				\
+	_dynamic_func_call_no_desc(fmt, __drm_dev_dbg,			\
+				   dev, cat, fmt, ##__VA_ARGS__)

-:97: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#97: FILE: include/drm/drm_print.h:508:
+#define __drm_dbg(cat, fmt, ...)					\
+	_dynamic_func_call_no_desc(fmt, ___drm_dbg,			\
+				   cat, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 2 checks, 61 lines checked
06823fbcf6b5 drm_print: refine drm_debug_enabled for jump-label
135cac4ddf6d drm_print: prefer bare printk KERN_DEBUG on generic fn
-:49: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#49: FILE: drivers/gpu/drm/drm_print.c:174:
+	printk(KERN_DEBUG "%s %pV", p->prefix, vaf);

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
0f9de5bc809f drm_print: add _ddebug desc to drm_*dbg prototypes
-:56: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#56: FILE: drivers/gpu/drm/drm_print.c:284:
+			dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",

-:60: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#60: FILE: drivers/gpu/drm/drm_print.c:288:
+			printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",

total: 0 errors, 2 warnings, 0 checks, 91 lines checked
2962dd40ded0 dyndbg: add _DPRINTK_FLAGS_ENABLED
a94e9b4c4296 dyndbg: add _DPRINTK_FLAGS_TRACE
4cfbc43dc308 dyndbg: add write-events-to-tracefs code
-:28: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#28: 
  https://lore.kernel.org/lkml/20200825153338.17061-1-vincent.whitchurch@axis.com/

-:168: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#168: FILE: lib/dynamic_debug.c:849:
+{
+

-:259: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#259: FILE: lib/dynamic_debug.c:942:
+		ddebug_dev_printk(flags, dev->dev.parent,
+				   "%s%s %s %s%s: %pV",

-:269: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#269: FILE: lib/dynamic_debug.c:950:
+		ddebug_printk(flags, KERN_DEBUG "%s%s: %pV",
+			       netdev_name(dev), netdev_reg_state(dev), &vaf);

-:273: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#273: FILE: lib/dynamic_debug.c:953:
+		ddebug_printk(flags, KERN_DEBUG "(NULL net_device): %pV",
+			       &vaf);

total: 0 errors, 1 warnings, 4 checks, 254 lines checked
d7e672d096dc dyndbg: 4 new trace-events: pr_debug, dev_dbg, drm_{, dev}debug
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:81: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#81: 
new file mode 100644

-:101: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#101: FILE: include/trace/events/drm.h:16:
+	    TP_STRUCT__entry(

-:106: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#106: FILE: include/trace/events/drm.h:21:
+	    TP_fast_assign(

-:107: WARNING:TABSTOP: Statements should start on a tabstop
#107: FILE: include/trace/events/drm.h:22:
+		    int len;

-:113: WARNING:TABSTOP: Statements should start on a tabstop
#113: FILE: include/trace/events/drm.h:28:
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))

-:113: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#113: FILE: include/trace/events/drm.h:28:
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))
+			    len -= 1;

-:127: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#127: FILE: include/trace/events/drm.h:42:
+	    TP_STRUCT__entry(

-:133: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#133: FILE: include/trace/events/drm.h:48:
+	    TP_fast_assign(

-:134: WARNING:TABSTOP: Statements should start on a tabstop
#134: FILE: include/trace/events/drm.h:49:
+		    int len;

-:141: WARNING:TABSTOP: Statements should start on a tabstop
#141: FILE: include/trace/events/drm.h:56:
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))

-:141: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#141: FILE: include/trace/events/drm.h:56:
+		    if (len > 0 && (__get_str(msg)[len - 1] == '\n'))
+			    len -= 1;

-:175: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#175: FILE: include/trace/events/dyndbg.h:16:
+	    TP_STRUCT__entry(

-:180: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#180: FILE: include/trace/events/dyndbg.h:21:
+	    TP_fast_assign(

-:187: WARNING:TABSTOP: Statements should start on a tabstop
#187: FILE: include/trace/events/dyndbg.h:28:
+		    if (len > 0 && (text[len - 1] == '\n'))

-:187: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#187: FILE: include/trace/events/dyndbg.h:28:
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;

-:205: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#205: FILE: include/trace/events/dyndbg.h:46:
+	    TP_STRUCT__entry(

-:211: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#211: FILE: include/trace/events/dyndbg.h:52:
+	    TP_fast_assign(

-:213: CHECK:SPACING: No space is necessary after a cast
#213: FILE: include/trace/events/dyndbg.h:54:
+		    __entry->dev = (struct device *) dev;

-:219: WARNING:TABSTOP: Statements should start on a tabstop
#219: FILE: include/trace/events/dyndbg.h:60:
+		    if (len > 0 && (text[len - 1] == '\n'))

-:219: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (20, 28)
#219: FILE: include/trace/events/dyndbg.h:60:
+		    if (len > 0 && (text[len - 1] == '\n'))
+			    len -= 1;

-:350: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#350: FILE: lib/dynamic_debug.c:912:
+		ddebug_printk(descriptor, KERN_DEBUG "(NULL device *): %pV",
+			       &vaf);

total: 0 errors, 11 warnings, 10 checks, 358 lines checked
52b67f942764 dyndbg/drm: POC add tracebits sysfs-knob


