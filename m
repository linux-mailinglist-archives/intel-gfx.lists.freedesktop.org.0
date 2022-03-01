Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9B74C975F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 21:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4483010E1EE;
	Tue,  1 Mar 2022 20:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BFE8810E1EE;
 Tue,  1 Mar 2022 20:56:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB388A0078;
 Tue,  1 Mar 2022 20:56:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Tue, 01 Mar 2022 20:56:59 -0000
Message-ID: <164616821973.8601.9122442025972091120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220301164629.3814634-1-jim.cromie@gmail.com>
In-Reply-To: <20220301164629.3814634-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_use_dynamic-debug_under_drm=2Edebug_api_=28rev2=29?=
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

Series: use dynamic-debug under drm.debug api (rev2)
URL   : https://patchwork.freedesktop.org/series/100289/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c2ed9cc02d9c dyndbg: fix static_branch manipulation
a8f6c71f283e dyndbg: add class_id field and query support
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#141: FILE: include/linux/dynamic_debug.h:142:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
+	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&id, ##__VA_ARGS__);			\
 } while (0)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#151: FILE: include/linux/dynamic_debug.h:148:
+#define __dynamic_func_call_no_desc_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
+	if (DYNAMIC_DEBUG_BRANCH(id))					\
+		func(__VA_ARGS__);					\
 } while (0)

total: 0 errors, 0 warnings, 2 checks, 216 lines checked
3a4e3b60eacf dyndbg: add DEFINE_DYNAMIC_DEBUG_CLASSBITS macro and callbacks
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
   echo "module drm -p ; module drm class 0 +p ; module drm class 2 +p" >control

-:164: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fsname' - possible side-effects?
#164: FILE: include/linux/dynamic_debug.h:291:
+#define DEFINE_DYNAMIC_DEBUG_CLASSBITS(fsname, _var, _flgs, desc, ...)	\
+	MODULE_PARM_DESC(fsname, desc);					\
+	static struct dyndbg_classbits_param ddcats_##_var = {		\
+		.bits = &(_var),					\
+		.flags = _flgs,						\
+		.classes = { __VA_ARGS__, _DPRINTK_SITE_UNCLASSED }	\
+	};								\
+	module_param_cb(fsname, &param_ops_dyndbg_classbits,		\
+			&ddcats_##_var, 0644)

-:227: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#227: FILE: lib/dynamic_debug.c:649:
+	for (i = 0; i < _DPRINTK_SITE_UNCLASSED &&
+		dcp->classes[i] < _DPRINTK_SITE_UNCLASSED; i++) {

-:228: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#228: FILE: lib/dynamic_debug.c:650:
+		dcp->classes[i] < _DPRINTK_SITE_UNCLASSED; i++) {
+

total: 0 errors, 1 warnings, 3 checks, 145 lines checked
63c1eb03d319 dyndbg: drop EXPORTed dynamic_debug_exec_queries
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
  commit a2d375eda771 ("dyndbg: refine export, rename to dynamic_debug_exec_queries()")

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
523e64e179fa dyndbg: improve change-info to have old and new
e2b2197bb80e dyndbg: abstract dyndbg_site_is_printing
-:20: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'desc' may be better as '(desc)' to avoid precedence issues
#20: FILE: include/linux/dynamic_debug.h:59:
+#define dyndbg_site_is_printing(desc)	(desc->flags & _DPRINTK_FLAGS_PRINT)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
d701d41dd224 drm_print: condense enum drm_debug_category
bbfe74b86e22 drm_print: interpose drm_*dbg with forwarding macros
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: include/drm/drm_print.h:338:
+void __drm_dev_dbg(const struct device *dev, enum drm_debug_category category,
 		 const char *format, ...);

total: 0 errors, 0 warnings, 1 checks, 59 lines checked
13edef385bee drm_print: wrap drm_*_dbg in dyndbg jumplabel
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#72: FILE: include/drm/drm_print.h:390:
+#define drm_dev_dbg(dev, cat, fmt, ...)				\
+	_dynamic_func_call_no_desc(fmt, __drm_dev_dbg,			\
+				   dev, cat, fmt, ##__VA_ARGS__)

-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fmt' - possible side-effects?
#86: FILE: include/drm/drm_print.h:503:
+#define __drm_dbg(cat, fmt, ...)					\
+	_dynamic_func_call_no_desc(fmt, ___drm_dbg,			\
+				   cat, fmt, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 2 checks, 53 lines checked
6cea91e13186 drm_print: refine drm_debug_enabled for dyndbg+jump-label
534cea23990c drm_print: prefer bare printk KERN_DEBUG on generic fn
-:25: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#25: 
 462583   36604   54592 553779   87333 /lib/modules/5.16.0-rc4-lm1-00008-ged3eac8ceeea/kernel/drivers/gpu/drm/drm.ko

-:51: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#51: FILE: drivers/gpu/drm/drm_print.c:164:
+	printk(KERN_DEBUG "%s %pV", p->prefix, vaf);

total: 0 errors, 2 warnings, 0 checks, 17 lines checked
a052ebcff18b drm_print: add _ddebug desc to drm_*dbg prototypes
-:61: WARNING:PREFER_DEV_LEVEL: Prefer dev_dbg(... to dev_printk(KERN_DEBUG, ...
#61: FILE: drivers/gpu/drm/drm_print.c:274:
+			dev_printk(KERN_DEBUG, dev, "[" DRM_NAME ":%ps] %pV",

-:65: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(...  to printk(KERN_DEBUG ...
#65: FILE: drivers/gpu/drm/drm_print.c:278:
+			printk(KERN_DEBUG "[" DRM_NAME ":%ps] %pV",

total: 0 errors, 2 warnings, 0 checks, 98 lines checked
338e0af8179a drm_print: use DEFINE_DYNAMIC_DEBUG_CLASSBITS for drm.debug
-:62: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#62: FILE: drivers/gpu/drm/drm_print.c:58:
+DEFINE_DYNAMIC_DEBUG_CLASSBITS(debug, __drm_debug, "p",
+	"enable drm.debug categories - 1 bit per category",

total: 0 errors, 0 warnings, 1 checks, 48 lines checked


