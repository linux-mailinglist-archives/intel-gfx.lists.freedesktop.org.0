Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39291F104A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 00:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B076589ED3;
	Sun,  7 Jun 2020 22:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7C6F89E98;
 Sun,  7 Jun 2020 22:49:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1D14A0BD0;
 Sun,  7 Jun 2020 22:49:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Jun 2020 22:49:58 -0000
Message-ID: <159157019876.15988.17284161377327166555@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200607222108.14401-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/28=5D_drm/i915=3A_Adjust_the_sen?=
 =?utf-8?q?tinel_assert_to_match_implementation?=
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

Series: series starting with [01/28] drm/i915: Adjust the sentinel assert to match implementation
URL   : https://patchwork.freedesktop.org/series/78103/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f23f25433228 drm/i915: Adjust the sentinel assert to match implementation
b94a954251d4 drm/i915/selftests: Make the hanging request non-preemptible
854873908649 drm/i915/selftests: Teach hang-self to target only itself
f2f769eafd3d drm/i915/selftests: Remove live_suppress_wait_preempt
a4fea0425495 drm/i915/selftests: Trim execlists runtime
7253a1d1220b drm/i915/gt: Use virtual_engine during execlists_dequeue
61f3b28c89b9 drm/i915/gt: Decouple inflight virtual engines
7e90a16cc7ce drm/i915/gt: Resubmit the virtual engine on schedule-out
85be36e07c69 drm/i915: Add list_for_each_entry_safe_continue_reverse
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pos' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'member' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/i915_utils.h:269:
+#define list_for_each_entry_safe_continue_reverse(pos, n, head, member)	\
+	for (pos = list_prev_entry(pos, member),			\
+	     n = list_prev_entry(pos, member);				\
+	     &pos->member != (head);					\
+	     pos = n, n = list_prev_entry(n, member))

total: 0 errors, 0 warnings, 3 checks, 12 lines checked
3fa210c03e00 drm/i915/gem: Separate reloc validation into an earlier step
6e281d4c956c drm/i915/gem: Lift GPU relocation allocation
06166bdaf5a2 drm/i915/gem: Build the reloc request first
b03d9c429a48 drm/i915/gem: Add all GPU reloc awaits/signals en masse
78cb8746679e dma-buf: Proxy fence, an unsignaled fence placeholder
-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:438: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#438: FILE: drivers/dma-buf/st-dma-fence-proxy.c:20:
+	spinlock_t lock;

total: 0 errors, 1 warnings, 1 checks, 1158 lines checked
0cf43f808ad7 drm/i915: Lift waiter/signaler iterators
54c54ac54e10 drm/i915: Unpeel awaits on a proxy fence
097cde1f158a drm/i915/gem: Make relocations atomic within execbuf
50d452bcc3eb drm/i915: Strip out internal priorities
40a48b3a4cd5 drm/i915: Remove I915_USER_PRIORITY_SHIFT
e82c48f763c2 drm/i915: Replace engine->schedule() with a known request operation
95ddc88b38ef drm/i915/gt: Do not suspend bonded requests if one hangs
f9a12aff6156 drm/i915: Teach the i915_dependency to use a double-lock
2084c4ff504b drm/i915: Restructure priority inheritance
36de84a8bd2b ipi-dag
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:55: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 43 lines checked
956673f1ee95 drm/i915/gt: Check for a completed last request once
62d3790caaf1 drm/i915: Fair low-latency scheduling
-:1728: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1728: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1571 lines checked
29754bd08fd1 drm/i915/gt: Specify a deadline for the heartbeat
1dad2fcca4f7 drm/i915: Replace the priority boosting for the display with a deadline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
