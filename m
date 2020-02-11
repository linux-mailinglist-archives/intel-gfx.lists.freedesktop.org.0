Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB1D159CE7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 00:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF3D6E03F;
	Tue, 11 Feb 2020 23:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D7E6E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 23:09:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20193106-1500050 
 for multiple; Tue, 11 Feb 2020 23:09:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 23:09:44 +0000
Message-Id: <20200211230944.1203098-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Expand bad CS completion event
 debug
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Show the ring/request/context state if we see what we believe is an
early CS completion.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_context.c |  3 ++-
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 31 +++++++++++++++++++++++--
 2 files changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 57e8a051ddc2..e4f89341d17c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -116,7 +116,8 @@ int __intel_context_do_pin(struct intel_context *ce)
 		if (unlikely(err))
 			goto err_active;
 
-		CE_TRACE(ce, "pin ring:{head:%04x, tail:%04x}\n",
+		CE_TRACE(ce, "pin ring:{start:%08x, head:%04x, tail:%04x}\n",
+			 i915_ggtt_offset(ce->ring->vma),
 			 ce->ring->head, ce->ring->tail);
 
 		smp_mb__before_atomic(); /* flush pin before it is visible */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 902d440ef07d..1e3db37dea2b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2328,8 +2328,35 @@ static void process_csb(struct intel_engine_cs *engine)
 			 * coherent (visible from the CPU) before the
 			 * user interrupt and CSB is processed.
 			 */
-			GEM_BUG_ON(!i915_request_completed(*execlists->active) &&
-				   !reset_in_progress(execlists));
+			if (GEM_SHOW_DEBUG() &&
+			    !i915_request_completed(*execlists->active) &&
+			    !reset_in_progress(execlists)) {
+				struct i915_request *rq = *execlists->active;
+				const u32 *regs = rq->context->lrc_reg_state;
+
+				ENGINE_TRACE(engine,
+					     "ring:{start:0x%08x, head:%04x, tail:%04x, ctl:%08x, mode:%08x}\n",
+					     ENGINE_READ(engine, RING_START),
+					     ENGINE_READ(engine, RING_HEAD) & HEAD_ADDR,
+					     ENGINE_READ(engine, RING_TAIL) & TAIL_ADDR,
+					     ENGINE_READ(engine, RING_CTL),
+					     ENGINE_READ(engine, RING_MI_MODE));
+				ENGINE_TRACE(engine,
+					     "rq:{start:%08x, head:%04x, tail:%04x, seqno:%llx:%d, hwsp:%d}, ",
+					     i915_ggtt_offset(rq->ring->vma),
+					     rq->head, rq->tail,
+					     rq->fence.context,
+					     lower_32_bits(rq->fence.seqno),
+					     hwsp_seqno(rq));
+				ENGINE_TRACE(engine,
+					     "ctx:{start:%08x, head:%04x, tail:%04x}, ",
+					     regs[CTX_RING_START],
+					     regs[CTX_RING_HEAD],
+					     regs[CTX_RING_TAIL]);
+
+				GEM_BUG_ON("context completed before request");
+			}
+
 			execlists_schedule_out(*execlists->active++);
 
 			GEM_BUG_ON(execlists->active - execlists->inflight >
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
