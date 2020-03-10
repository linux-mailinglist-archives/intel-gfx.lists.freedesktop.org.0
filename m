Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F931808A0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 20:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EEA6E8D4;
	Tue, 10 Mar 2020 19:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5CC06E39E;
 Tue, 10 Mar 2020 19:57:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD867A0091;
 Tue, 10 Mar 2020 19:57:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 10 Mar 2020 19:57:59 -0000
Message-ID: <158387027981.1150.8195429485204151386@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200310092119.14965-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_list=3A_Prevent_compiler_reloads_inside_=27safe=27_list_ite?=
 =?utf-8?q?ration?=
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

Series: list: Prevent compiler reloads inside 'safe' list iteration
URL   : https://patchwork.freedesktop.org/series/74495/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d40a755ea0b3 list: Prevent compiler reloads inside 'safe' list iteration
-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#37: FILE: include/linux/list.h:547:
+#define list_next_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.next), typeof(*(pos)), member)

-:37: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#37: FILE: include/linux/list.h:547:
+#define list_next_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.next), typeof(*(pos)), member)

-:37: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'member' may be better as '(member)' to avoid precedence issues
#37: FILE: include/linux/list.h:547:
+#define list_next_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.next), typeof(*(pos)), member)

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#55: FILE: include/linux/list.h:566:
+#define list_prev_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.prev), typeof(*(pos)), member)

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#55: FILE: include/linux/list.h:566:
+#define list_prev_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.prev), typeof(*(pos)), member)

-:55: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'member' may be better as '(member)' to avoid precedence issues
#55: FILE: include/linux/list.h:566:
+#define list_prev_entry_safe(pos, member) \
+	list_entry(READ_ONCE((pos)->member.prev), typeof(*(pos)), member)

-:82: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#82: FILE: include/linux/list.h:725:
+#define list_for_each_entry_safe_continue(pos, n, head, member) ^I\$

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#82: FILE: include/linux/list.h:725:
+#define list_for_each_entry_safe_continue(pos, n, head, member) 	\
+	for (pos = list_next_entry(pos, member), 			\
+		n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#82: FILE: include/linux/list.h:725:
+#define list_for_each_entry_safe_continue(pos, n, head, member) 	\
+	for (pos = list_next_entry(pos, member), 			\
+		n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#82: FILE: include/linux/list.h:725:
+#define list_for_each_entry_safe_continue(pos, n, head, member) 	\
+	for (pos = list_next_entry(pos, member), 			\
+		n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

-:83: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#83: FILE: include/linux/list.h:726:
+^Ifor (pos = list_next_entry(pos, member), ^I^I^I\$

-:98: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#98: FILE: include/linux/list.h:741:
+#define list_for_each_entry_safe_from(pos, n, head, member) ^I^I\$

-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#98: FILE: include/linux/list.h:741:
+#define list_for_each_entry_safe_from(pos, n, head, member) 		\
+	for (n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#98: FILE: include/linux/list.h:741:
+#define list_for_each_entry_safe_from(pos, n, head, member) 		\
+	for (n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

-:98: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#98: FILE: include/linux/list.h:741:
+#define list_for_each_entry_safe_from(pos, n, head, member) 		\
+	for (n = list_next_entry_safe(pos, member);			\
+	     &pos->member != (head);					\
+	     pos = n, n = list_next_entry_safe(n, member))

total: 0 errors, 3 warnings, 12 checks, 94 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
