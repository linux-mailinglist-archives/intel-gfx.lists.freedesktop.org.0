Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCBB1B4701
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 16:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA866E408;
	Wed, 22 Apr 2020 14:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0556E408
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 14:18:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20985213-1500050 
 for multiple; Wed, 22 Apr 2020 15:17:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 15:17:49 +0100
Message-Id: <20200422141749.28709-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Drop request-before-CS
 assertion
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

When we migrated to execlists, one of the conditions we wanted to test
for was whether the breadcrumb seqno was being written before the
breadcumb interrupt was delivered. This was following on from issues
observed on previous generations which were not so strong ordered. With
the removal of the missed interrupt detection, we have not reliable
means of detecting the out-of-order seqno/interupt but instead tried to
assert that the relationship between the CS event interrupt and the
breadwrite should be strongly ordered. However, Icelake proves it is
possible for the HW implementation to forget about minor little details
such as write ordering and so we the order between *processing* the CS
event and the breadcrumb is unreliable.

Remove the unreliable assertion, but leave a debug telltale in case we
have reason to suspect.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1658
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 27 ++-------------------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d42a9d6767d4..eb0d6f1964f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2384,13 +2384,6 @@ gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
 }
 
-static inline void flush_hwsp(const struct i915_request *rq)
-{
-	mb();
-	clflush((void *)READ_ONCE(rq->hwsp_seqno));
-	mb();
-}
-
 static void process_csb(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -2506,19 +2499,8 @@ static void process_csb(struct intel_engine_cs *engine)
 				const u32 *regs __maybe_unused =
 					rq->context->lrc_reg_state;
 
-				/*
-				 * Flush the breadcrumb before crying foul.
-				 *
-				 * Since we have hit this on icl and seen the
-				 * breadcrumb advance as we print out the debug
-				 * info (so the problem corrected itself without
-				 * lasting damage), and we know that icl suffers
-				 * from missing global observation points in
-				 * execlists, presume that affects even more
-				 * coherency.
-				 */
-				flush_hwsp(rq);
-
+				ENGINE_TRACE(engine,
+					     "context completed before request!\n");
 				ENGINE_TRACE(engine,
 					     "ring:{start:0x%08x, head:%04x, tail:%04x, ctl:%08x, mode:%08x}\n",
 					     ENGINE_READ(engine, RING_START),
@@ -2538,11 +2520,6 @@ static void process_csb(struct intel_engine_cs *engine)
 					     regs[CTX_RING_START],
 					     regs[CTX_RING_HEAD],
 					     regs[CTX_RING_TAIL]);
-
-				/* Still? Declare it caput! */
-				if (!i915_request_completed(rq) &&
-				    !reset_in_progress(execlists))
-					GEM_BUG_ON("context completed before request");
 			}
 
 			execlists_schedule_out(*execlists->active++);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
