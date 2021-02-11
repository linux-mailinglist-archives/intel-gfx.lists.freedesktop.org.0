Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0F8318C5E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 14:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D96A6E42F;
	Thu, 11 Feb 2021 13:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96F9F6E42A;
 Thu, 11 Feb 2021 13:48:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9414FA47E1;
 Thu, 11 Feb 2021 13:48:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Feb 2021 13:48:26 -0000
Message-ID: <161305130660.27068.7388604519254095025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210211113848.16341-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210211113848.16341-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib=3A_Add_a_YAML_emitter_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: lib: Add a YAML emitter (rev2)
URL   : https://patchwork.freedesktop.org/series/73433/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7299d4b320b lib: Add a YAML emitter
-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
new file mode 100644

-:494: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#494: FILE: lib/Kconfig:673:
+config TEST_YAML

-:687: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'str' - possible side-effects?
#687: FILE: lib/yaml/yaml-emitter.c:25:
+#define STRING_INIT(str, len) { (str), (str) + (len), (str) }

-:689: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'str' - possible side-effects?
#689: FILE: lib/yaml/yaml-emitter.c:27:
+#define YAML_STRING(name, str) \
+	struct yaml_string name = STRING_INIT(str, strlen(str))

-:696: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#696: FILE: lib/yaml/yaml-emitter.c:34:
+#define IS_ALPHA_AT(s, offset)						\
+	(isalnum((s).pos[offset]) ||					\
+	 (s).pos[offset] == '_' ||					\
+	 (s).pos[offset] == '-')

-:696: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#696: FILE: lib/yaml/yaml-emitter.c:34:
+#define IS_ALPHA_AT(s, offset)						\
+	(isalnum((s).pos[offset]) ||					\
+	 (s).pos[offset] == '_' ||					\
+	 (s).pos[offset] == '-')

-:711: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#711: FILE: lib/yaml/yaml-emitter.c:49:
+#define IS_BOM_AT(s, offset)						\
+	(CHECK_AT((s), '\xEF', (offset) + 0) &&				\
+	 CHECK_AT((s), '\xBB', (offset) + 1) &&				\
+	 CHECK_AT((s), '\xBF', (offset) + 2))  /* BOM (#xFEFF) */

-:711: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#711: FILE: lib/yaml/yaml-emitter.c:49:
+#define IS_BOM_AT(s, offset)						\
+	(CHECK_AT((s), '\xEF', (offset) + 0) &&				\
+	 CHECK_AT((s), '\xBB', (offset) + 1) &&				\
+	 CHECK_AT((s), '\xBF', (offset) + 2))  /* BOM (#xFEFF) */

-:723: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#723: FILE: lib/yaml/yaml-emitter.c:61:
+#define IS_BLANK_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_TAB_AT((s), (offset)))

-:723: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#723: FILE: lib/yaml/yaml-emitter.c:61:
+#define IS_BLANK_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_TAB_AT((s), (offset)))

-:727: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#727: FILE: lib/yaml/yaml-emitter.c:65:
+#define IS_BREAK_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) || /* CR (#xD)*/			\
+	 CHECK_AT((s), '\n', (offset)) || /* LF (#xA) */		\
+	 (CHECK_AT((s), '\xC2', (offset)) &&				\
+	  CHECK_AT((s), '\x85', (offset) + 1)) || /* NEL (#x85) */	\
+	 (CHECK_AT((s), '\xE2', (offset)) &&				\
+	  CHECK_AT((s), '\x80', (offset) + 1) &&			\
+	  CHECK_AT((s), '\xA8', (offset) + 2)) ||   /* LS (#x2028) */	\
+	 (CHECK_AT((s), '\xE2', (offset)) &&				\
+	  CHECK_AT((s), '\x80', (offset) + 1) &&			\
+	    CHECK_AT((s), '\xA9', (offset) + 2)))  /* PS (#x2029) */

-:727: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#727: FILE: lib/yaml/yaml-emitter.c:65:
+#define IS_BREAK_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) || /* CR (#xD)*/			\
+	 CHECK_AT((s), '\n', (offset)) || /* LF (#xA) */		\
+	 (CHECK_AT((s), '\xC2', (offset)) &&				\
+	  CHECK_AT((s), '\x85', (offset) + 1)) || /* NEL (#x85) */	\
+	 (CHECK_AT((s), '\xE2', (offset)) &&				\
+	  CHECK_AT((s), '\x80', (offset) + 1) &&			\
+	  CHECK_AT((s), '\xA8', (offset) + 2)) ||   /* LS (#x2028) */	\
+	 (CHECK_AT((s), '\xE2', (offset)) &&				\
+	  CHECK_AT((s), '\x80', (offset) + 1) &&			\
+	    CHECK_AT((s), '\xA9', (offset) + 2)))  /* PS (#x2029) */

-:740: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#740: FILE: lib/yaml/yaml-emitter.c:78:
+#define IS_CRLF_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) && CHECK_AT((s), '\n', (offset) + 1))

-:740: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#740: FILE: lib/yaml/yaml-emitter.c:78:
+#define IS_CRLF_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) && CHECK_AT((s), '\n', (offset) + 1))

-:744: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#744: FILE: lib/yaml/yaml-emitter.c:82:
+#define IS_BREAKZ_AT(s, offset)						\
+	(IS_BREAK_AT((s), (offset)) || IS_Z_AT((s), (offset)))

-:744: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#744: FILE: lib/yaml/yaml-emitter.c:82:
+#define IS_BREAKZ_AT(s, offset)						\
+	(IS_BREAK_AT((s), (offset)) || IS_Z_AT((s), (offset)))

-:748: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#748: FILE: lib/yaml/yaml-emitter.c:86:
+#define IS_SPACEZ_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:748: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#748: FILE: lib/yaml/yaml-emitter.c:86:
+#define IS_SPACEZ_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:752: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#752: FILE: lib/yaml/yaml-emitter.c:90:
+#define IS_BLANKZ_AT(s, offset)						\
+	(IS_BLANK_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:752: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#752: FILE: lib/yaml/yaml-emitter.c:90:
+#define IS_BLANKZ_AT(s, offset)						\
+	(IS_BLANK_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:770: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#770: FILE: lib/yaml/yaml-emitter.c:108:
+#define ADVANCE(s)	((s).pos += utf8_width((&s)))

-:774: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#774: FILE: lib/yaml/yaml-emitter.c:112:
+#define EMPTY(context, stack) ((stack).start == (stack).top)

-:776: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#776: FILE: lib/yaml/yaml-emitter.c:114:
+#define PUSH(context, stack, value)					\
+	(((stack).top != (stack).end ||					\
+	  !yaml_stack_extend((void **)&(stack).start,			\
+			     (void **)&(stack).top, (void **)&(stack).end)) ? \
+	 (*((stack).top++) = value, 0) :				\
+	 ((context)->errno = -ENOMEM))

-:2160: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#2160: FILE: lib/yaml/yaml-emitter.c:1498:
+		BUG();

-:2843: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2843: FILE: lib/yaml/yaml-emitter.c:2181:
+		return emit_node(emitter, event, 0, 0, 1, 1);
+	} else {

-:2944: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#2944: FILE: lib/yaml/yaml-emitter.c:2282:
+		BUG();

-:3017: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#3017: FILE: lib/yaml/yaml-emitter.c:2355:
+#define STACK_INIT(context, stack)                                     \
+	(((stack).start = kmalloc(INITIAL_STACK_SIZE * sizeof(*(stack). start),\
+				  gfp)) ?			\
+	((stack).top = (stack).start,					\
+	(stack).end = (stack).start + INITIAL_STACK_SIZE,		\
+	1) : 0)

-:3178: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#3178: FILE: lib/yaml/yaml-emitter.c:2516:
+	emitter->best_indent = (1 < indent && indent < 10) ? indent : 2;

-:3468: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#3468: FILE: lib/yaml/yaml-events.c:115:
+#if 0

-:3509: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#3509: FILE: lib/yaml/yaml-events.c:156:
+#if 0

total: 0 errors, 8 warnings, 22 checks, 3935 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
