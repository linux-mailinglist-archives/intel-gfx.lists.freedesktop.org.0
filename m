Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C352CCB53
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 01:57:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F1A6EB1E;
	Thu,  3 Dec 2020 00:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B206EB1E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 00:57:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23196341-1500050 
 for multiple; Thu, 03 Dec 2020 00:57:33 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 00:57:31 +0000
Message-Id: <20201203005731.18385-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Clear the execlists timers before
 restarting
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Across a reset, we stop the engine but not the timers. This leaves a
window where the timers have inconsistent state with the engine, causing
false timeslicing/preemption decisions to be made immediately upon
resume.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
This fits the trace of a failure across reset, and has a certain ring of
truth to it, but the preempt timer should have been cleared with the
first submission after the reset (and before the first submission should
not be an issue). I fear there's something else lurking here with the
timer vs reset.

For reference, the issue is the immediate reset following the first,
both due to preeempt timeout, but there was not a submission during the
reset to prime the preempt timer:

[   27.184920] kworker/-121       3.... 27095209us : execlists_reset: 0000:00:02.0 bcs0: reset for preemption time out
[   27.184962] kworker/-121       3d..1 27095309us : active_context: 0000:00:02.0 bcs0: ccid found at active:0
[   27.185005] kworker/-121       3d..1 27095312us : execlists_hold: 0000:00:02.0 bcs0: fence 1c:45, current 44 on hold
[   27.185048] kworker/-121       3d..1 27095313us : execlists_hold: 0000:00:02.0 bcs0: fence 1c:46, current 44 on hold
[   27.185091] kworker/-121       3d..1 27095314us : execlists_hold: 0000:00:02.0 bcs0: fence 1c:47, current 44 on hold
[   27.185135] kworker/-121       3.... 27095316us : intel_engine_reset: 0000:00:02.0 bcs0: flags=8
[   27.185178] kworker/-121       3.... 27095345us : execlists_reset_prepare: 0000:00:02.0 bcs0: depth<-1
[   27.185218] kworker/-121       3.... 27095346us : intel_engine_stop_cs: 0000:00:02.0 bcs0: 
[   27.185259] kworker/-121       3.... 27096347us : intel_engine_stop_cs: 0000:00:02.0 bcs0: timed out on STOP_RING -> IDLE
[   27.185304] kworker/-121       3.... 27096367us : __intel_gt_reset: 0000:00:02.0 engine_mask=2
[   27.185345] kworker/-121       3.... 27097297us : intel_engine_cancel_stop_cs: 0000:00:02.0 bcs0: 
[   27.185388] kworker/-121       3.... 27097299us : execlists_reset_finish: 0000:00:02.0 bcs0: depth->1
[   27.185440] kworker/-121       3d..2 27097348us : __i915_schedule: 0000:00:02.0 bcs0: bumping queue-priority-hint:1025 for rq:13:20, inflight:1c:47 prio 0
[   27.185485] kworker/-121       3..s1 27097350us : execlists_reset: 0000:00:02.0 bcs0: reset for preemption time out
[   27.185528] kworker/-121       3d.s2 27097454us : active_context: 0000:00:02.0 bcs0: ccid found at active:0

---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 43703efb36d1..f5685ec9e0cd 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4200,6 +4200,9 @@ static int execlists_resume(struct intel_engine_cs *engine)
 
 	intel_breadcrumbs_reset(engine->breadcrumbs);
 
+	cancel_timer(&execlists->timer);
+	cancel_timer(&execlists->preempt);
+
 	if (GEM_SHOW_DEBUG() && unexpected_starting_state(engine)) {
 		struct drm_printer p = drm_debug_printer(__func__);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
