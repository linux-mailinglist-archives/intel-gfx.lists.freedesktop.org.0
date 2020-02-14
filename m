Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A83015CEE8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 01:13:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D656F89E;
	Fri, 14 Feb 2020 00:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B01C6E048;
 Fri, 14 Feb 2020 00:13:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 043E5A0099;
 Fri, 14 Feb 2020 00:13:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Feb 2020 00:13:53 -0000
Message-ID: <158163923399.9929.17727843239752979907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213232338.3746869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213232338.3746869-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib=3A_Add_a_YAML_emitter?=
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

Series: lib: Add a YAML emitter
URL   : https://patchwork.freedesktop.org/series/73433/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c15f98144f75 lib: Add a YAML emitter
-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
new file mode 100644

-:451: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#451: FILE: include/linux/yaml.h:163:
+}
+void yaml_mapping_end(struct yaml_emitter *emitter);

-:459: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#459: FILE: include/linux/yaml.h:171:
+}
+void yaml_sequence_end(struct yaml_emitter *emitter);

-:492: WARNING:CONFIG_DESCRIPTION: please write a paragraph that describes the config symbol fully
#492: FILE: lib/Kconfig:658:
+config TEST_YAML

-:685: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'str' - possible side-effects?
#685: FILE: lib/yaml/yaml-emitter.c:25:
+#define STRING_INIT(str, len) { (str), (str) + (len), (str) }

-:687: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'str' - possible side-effects?
#687: FILE: lib/yaml/yaml-emitter.c:27:
+#define YAML_STRING(name, str) \
+	struct yaml_string name = STRING_INIT(str, strlen(str))

-:694: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#694: FILE: lib/yaml/yaml-emitter.c:34:
+#define IS_ALPHA_AT(s, offset)						\
+	(isalnum((s).pos[offset]) ||					\
+	 (s).pos[offset] == '_' ||					\
+	 (s).pos[offset] == '-')

-:694: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#694: FILE: lib/yaml/yaml-emitter.c:34:
+#define IS_ALPHA_AT(s, offset)						\
+	(isalnum((s).pos[offset]) ||					\
+	 (s).pos[offset] == '_' ||					\
+	 (s).pos[offset] == '-')

-:709: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#709: FILE: lib/yaml/yaml-emitter.c:49:
+#define IS_BOM_AT(s, offset)						\
+	(CHECK_AT((s), '\xEF', (offset) + 0) &&				\
+	 CHECK_AT((s), '\xBB', (offset) + 1) &&				\
+	 CHECK_AT((s), '\xBF', (offset) + 2))  /* BOM (#xFEFF) */

-:709: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#709: FILE: lib/yaml/yaml-emitter.c:49:
+#define IS_BOM_AT(s, offset)						\
+	(CHECK_AT((s), '\xEF', (offset) + 0) &&				\
+	 CHECK_AT((s), '\xBB', (offset) + 1) &&				\
+	 CHECK_AT((s), '\xBF', (offset) + 2))  /* BOM (#xFEFF) */

-:721: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#721: FILE: lib/yaml/yaml-emitter.c:61:
+#define IS_BLANK_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_TAB_AT((s), (offset)))

-:721: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#721: FILE: lib/yaml/yaml-emitter.c:61:
+#define IS_BLANK_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_TAB_AT((s), (offset)))

-:725: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#725: FILE: lib/yaml/yaml-emitter.c:65:
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

-:725: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#725: FILE: lib/yaml/yaml-emitter.c:65:
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

-:738: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#738: FILE: lib/yaml/yaml-emitter.c:78:
+#define IS_CRLF_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) && CHECK_AT((s), '\n', (offset) + 1))

-:738: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#738: FILE: lib/yaml/yaml-emitter.c:78:
+#define IS_CRLF_AT(s, offset)						\
+	(CHECK_AT((s), '\r', (offset)) && CHECK_AT((s), '\n', (offset) + 1))

-:742: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#742: FILE: lib/yaml/yaml-emitter.c:82:
+#define IS_BREAKZ_AT(s, offset)						\
+	(IS_BREAK_AT((s), (offset)) || IS_Z_AT((s), (offset)))

-:742: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#742: FILE: lib/yaml/yaml-emitter.c:82:
+#define IS_BREAKZ_AT(s, offset)						\
+	(IS_BREAK_AT((s), (offset)) || IS_Z_AT((s), (offset)))

-:746: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#746: FILE: lib/yaml/yaml-emitter.c:86:
+#define IS_SPACEZ_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:746: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#746: FILE: lib/yaml/yaml-emitter.c:86:
+#define IS_SPACEZ_AT(s, offset)						\
+	(IS_SPACE_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:750: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#750: FILE: lib/yaml/yaml-emitter.c:90:
+#define IS_BLANKZ_AT(s, offset)						\
+	(IS_BLANK_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:750: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset' - possible side-effects?
#750: FILE: lib/yaml/yaml-emitter.c:90:
+#define IS_BLANKZ_AT(s, offset)						\
+	(IS_BLANK_AT((s), (offset)) || IS_BREAKZ_AT((s), (offset)))

-:768: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#768: FILE: lib/yaml/yaml-emitter.c:108:
+#define ADVANCE(s)	((s).pos += utf8_width((&s)))

-:772: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#772: FILE: lib/yaml/yaml-emitter.c:112:
+#define EMPTY(context, stack) ((stack).start == (stack).top)

-:774: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#774: FILE: lib/yaml/yaml-emitter.c:114:
+#define PUSH(context, stack, value)					\
+	(((stack).top != (stack).end ||					\
+	  !yaml_stack_extend((void **)&(stack).start,			\
+			     (void **)&(stack).top, (void **)&(stack).end)) ? \
+	 (*((stack).top++) = value, 0) :				\
+	 ((context)->errno = -ENOMEM))

-:2135: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#2135: FILE: lib/yaml/yaml-emitter.c:1475:
+	case YAML_SINGLE_QUOTED_SCALAR_STYLE:

-:2141: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#2141: FILE: lib/yaml/yaml-emitter.c:1481:
+	case YAML_DOUBLE_QUOTED_SCALAR_STYLE:

-:2147: WARNING:MISSING_BREAK: Possible switch case/default not preceded by break or fallthrough comment
#2147: FILE: lib/yaml/yaml-emitter.c:1487:
+	case YAML_LITERAL_SCALAR_STYLE:

-:2158: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#2158: FILE: lib/yaml/yaml-emitter.c:1498:
+		BUG();

-:2841: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#2841: FILE: lib/yaml/yaml-emitter.c:2181:
+		return emit_node(emitter, event, 0, 0, 1, 1);
+	} else {

-:2942: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#2942: FILE: lib/yaml/yaml-emitter.c:2282:
+		BUG();

-:3015: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'stack' - possible side-effects?
#3015: FILE: lib/yaml/yaml-emitter.c:2355:
+#define STACK_INIT(context, stack)                                     \
+	(((stack).start = kmalloc(INITIAL_STACK_SIZE * sizeof(*(stack). start),\
+				  gfp)) ?			\
+	((stack).top = (stack).start,					\
+	(stack).end = (stack).start + INITIAL_STACK_SIZE,		\
+	1) : 0)

-:3176: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#3176: FILE: lib/yaml/yaml-emitter.c:2516:
+	emitter->best_indent = (1 < indent && indent < 10) ? indent : 2;

-:3206: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'lib/yaml/yaml-emitter.h', please use '/*' instead
#3206: FILE: lib/yaml/yaml-emitter.h:1:
+// SPDX-License-Identifier: MIT

-:3206: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3206: FILE: lib/yaml/yaml-emitter.h:1:
+// SPDX-License-Identifier: MIT

-:3466: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#3466: FILE: lib/yaml/yaml-events.c:115:
+#if 0

-:3507: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#3507: FILE: lib/yaml/yaml-events.c:156:
+#if 0

total: 0 errors, 13 warnings, 24 checks, 3933 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
