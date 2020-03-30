Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6976B198872
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88AA6E4FF;
	Mon, 30 Mar 2020 23:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 103136E4FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 23:43:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20745835-1500050 
 for multiple; Tue, 31 Mar 2020 00:43:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 00:43:18 +0100
Message-Id: <20200330234318.30638-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200330234205.25928-1-chris@chris-wilson.co.uk>
References: <20200330234205.25928-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Double check breadcrumb
 before crying foul
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

  process_csb: 0000:00:02.0 bcs0: cs-irq head=4, tail=5
  process_csb: 0000:00:02.0 bcs0: csb[5]: status=0x00008002:0x60000020
  trace_ports: 0000:00:02.0 bcs0: preempted { ff84:45154! prio 2 }
  trace_ports: 0000:00:02.0 bcs0: promote { ff84:45155* prio 2 }
  trace_ports: 0000:00:02.0 bcs0: submit { ff84:45156 prio 2 }

  process_csb: 0000:00:02.0 bcs0: cs-irq head=5, tail=6
  process_csb: 0000:00:02.0 bcs0: csb[6]: status=0x00000018:0x60000020
  trace_ports: 0000:00:02.0 bcs0: completed { ff84:45155* prio 2 }
  process_csb: 0000:00:02.0 bcs0: ring:{start:0x00178000, head:0928, tail:0928, ctl:00000000, mode:00000200}
  process_csb: 0000:00:02.0 bcs0: rq:{start:00178000, head:08b0, tail:08f0, seqno:ff84:45155, hwsp:45156},
  process_csb: 0000:00:02.0 bcs0: ctx:{start:00178000, head:e000928, tail:0928},
  process_csb: GEM_BUG_ON("context completed before request")

In this sequence, we can see that although we have submitted the next
request [ff84:45156] to HW (via ELSP[]) it has not yet reported the
lite-restore. Instead, we see the completion event of the currently
active request [ff85:45155] but at the time of processing that event,
the breadcrumb has not yet been written. Though by the time we do print
out the debug info, the seqno write of ff85:45156 has landed!

Therefore there is a serialisation problem between the seqno writes and
CS events, not just between the CS buffer and its head/tail pointers as
previously observed on Icelake.

This is not a huge problem, as we don't strictly rely on the breadcrumb
to determine HW activity, but it may indicate that interrupt delivery is
before the seqno write, aka bringing back the plague of missed
interrupts from yesteryear. However, there is no indication of this
wider problem, so let's just flush the seqno read before reporting an
error. If it persists after the fresh read we can worry again.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3d5f3f7677bb..afeca7eb1e3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2418,8 +2418,6 @@ static void process_csb(struct intel_engine_cs *engine)
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
 
-			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
-
 			ring_set_paused(engine, 0);
 
 			/* Point active to the new ELSP; prevent overwriting */
@@ -2432,6 +2430,7 @@ static void process_csb(struct intel_engine_cs *engine)
 				execlists_schedule_out(*old++);
 
 			/* switch pending to inflight */
+			GEM_BUG_ON(!assert_pending_valid(execlists, "promote"));
 			memcpy(execlists->inflight,
 			       execlists->pending,
 			       execlists_num_ports(execlists) *
@@ -2453,13 +2452,26 @@ static void process_csb(struct intel_engine_cs *engine)
 			 * user interrupt and CSB is processed.
 			 */
 			if (GEM_SHOW_DEBUG() &&
-			    !i915_request_completed(*execlists->active) &&
-			    !reset_in_progress(execlists)) {
-				struct i915_request *rq __maybe_unused =
-					*execlists->active;
+			    !i915_request_completed(*execlists->active)) {
+				struct i915_request *rq = *execlists->active;
 				const u32 *regs __maybe_unused =
 					rq->context->lrc_reg_state;
 
+				/*
+				 * Flush the breadcrumb before crying foul.
+				 *
+				 * Since we have hit this on icl and seen the
+				 * breadcrumb advance as we print out the debug
+				 * info (so the problem corrected itself without
+				 * lasting damage), and we know that icl suffers
+				 * from missing global observation points in
+				 * execlists, presume that affects even more
+				 * coherency.
+				 */
+				mb();
+				clflush((void *)READ_ONCE(rq->hwsp_seqno));
+				mb();
+
 				ENGINE_TRACE(engine,
 					     "ring:{start:0x%08x, head:%04x, tail:%04x, ctl:%08x, mode:%08x}\n",
 					     ENGINE_READ(engine, RING_START),
@@ -2480,7 +2492,10 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_HEAD],
 					     regs[CTX_RING_TAIL]);
 
-				GEM_BUG_ON("context completed before request");
+				/* Still? Declare it caput! */
+				if (!i915_request_completed(rq) &&
+				    !reset_in_progress(execlists))
+					GEM_BUG_ON("context completed before request");
 			}
 
 			execlists_schedule_out(*execlists->active++);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
