Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B084F1EF55D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 12:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128776E86E;
	Fri,  5 Jun 2020 10:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C81BB6E86C;
 Fri,  5 Jun 2020 10:30:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2E3BA011B;
 Fri,  5 Jun 2020 10:30:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 10:30:42 -0000
Message-ID: <159135304276.18509.15269286085694950595@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605095858.28455-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605095858.28455-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915=3A_Add_list=5Ffor?=
 =?utf-8?q?=5Feach=5Fentry=5Fsafe=5Fcontinue=5Freverse?=
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

Series: series starting with [1/5] drm/i915: Add list_for_each_entry_safe_continue_reverse
URL   : https://patchwork.freedesktop.org/series/78031/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e7d5754aeb38 drm/i915: Add list_for_each_entry_safe_continue_reverse
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
cc00968a346f drm/i915/gem: Separate reloc validation into an earlier step
-:101: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#101: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1408:
+				return (int)offset;
+			} else {

total: 0 errors, 1 warnings, 0 checks, 217 lines checked
b7fc02099400 drm/i915/gem: Lift GPU relocation allocation
43567189b2df drm/i915/gem: Build the reloc request first
00beaabc4fe0 drm/i915/gem: Add all GPU reloc awaits/signals en masse

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
