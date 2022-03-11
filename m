Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B24D5A53
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 06:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6464110E1DF;
	Fri, 11 Mar 2022 05:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3F3110E1DF;
 Fri, 11 Mar 2022 05:13:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFCA9A7DFB;
 Fri, 11 Mar 2022 05:13:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Fri, 11 Mar 2022 05:13:53 -0000
Message-ID: <164697563393.23985.12040046406848960855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311044756.425777-1-jim.cromie@gmail.com>
In-Reply-To: <20220311044756.425777-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dyndbg_add_exclusive_class_support?=
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

Series: dyndbg add exclusive class support
URL   : https://patchwork.freedesktop.org/series/101265/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7362a1150693 dyndbg: fix static_branch manipulation
38c78ef4dda7 dyndbg: add class_id field and query support
-:55: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a8f6c71f283e ("dyndbg: add class_id field and query support")'
#55: 
a8f6c71f283e dyndbg: add class_id field and query support

-:56: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#56: 
-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#157: FILE: include/linux/dynamic_debug.h:142:
+#define __dynamic_func_call_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);	\
+	if (DYNAMIC_DEBUG_BRANCH(id))				\
+		func(&id, ##__VA_ARGS__);			\
 } while (0)

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#167: FILE: include/linux/dynamic_debug.h:148:
+#define __dynamic_func_call_no_desc_cls(id, cls, fmt, func, ...) do {	\
+	DEFINE_DYNAMIC_DEBUG_METADATA_CLS(id, cls, fmt);		\
+	if (DYNAMIC_DEBUG_BRANCH(id))					\
+		func(__VA_ARGS__);					\
 } while (0)

total: 1 errors, 1 warnings, 2 checks, 216 lines checked
af3ef83dfd0c dyndbg: add DEFINE_DYNAMIC_DEBUG_CLASSBITS macro
-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fsname' - possible side-effects?
#167: FILE: include/linux/dynamic_debug.h:291:
+#define DEFINE_DYNAMIC_DEBUG_CLASSBITS(fsname, _var, _flgs, desc, ...)	\
+	MODULE_PARM_DESC(fsname, desc);					\
+	static struct dyndbg_classbits_param ddcats_##_var = {		\
+		.bits = &(_var),					\
+		.flags = _flgs,						\
+		.classes = { __VA_ARGS__, _DPRINTK_SITE_UNCLASSED }	\
+	};								\
+	module_param_cb(fsname, &param_ops_dyndbg_classbits,		\
+			&ddcats_##_var, 0644)

-:231: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#231: FILE: lib/dynamic_debug.c:650:
+		     dcp->classes[i] < _DPRINTK_SITE_UNCLASSED); i++) {
+

total: 0 errors, 0 warnings, 2 checks, 145 lines checked
718d3bf7a683 dyndbg: drop EXPORTed dynamic_debug_exec_queries
e9b94040c396 dyndbg: show both old and new in change-info


