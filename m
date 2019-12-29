Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9663412CA5D
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Dec 2019 19:32:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E44B89B06;
	Sun, 29 Dec 2019 18:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835BF89AB7
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Dec 2019 18:32:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19720977-1500050 
 for multiple; Sun, 29 Dec 2019 18:31:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 29 Dec 2019 18:31:51 +0000
Message-Id: <20191229183153.3719869-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Ignore stale context state
 upon resume
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

We leave the kernel_context on the HW as we suspend (and while idle).
There is no guarantee that is complete in memory, so we try to inhibit
restoration from the kernel_context. Reinforce the inhibition by
scrubbing the context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c             | 17 +++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 14e7e179855f..b1508dbd1063 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2494,6 +2494,11 @@ static int execlists_context_alloc(struct intel_context *ce)
 
 static void execlists_context_reset(struct intel_context *ce)
 {
+	u32 *regs;
+
+	CE_TRACE(ce, "reset\n");
+	GEM_BUG_ON(!intel_context_is_pinned(ce));
+
 	/*
 	 * Because we emit WA_TAIL_DWORDS there may be a disparity
 	 * between our bookkeeping in ce->ring->head and ce->ring->tail and
@@ -2510,8 +2515,17 @@ static void execlists_context_reset(struct intel_context *ce)
 	 * So to avoid that we reset the context images upon resume. For
 	 * simplicity, we just zero everything out.
 	 */
-	intel_ring_reset(ce->ring, 0);
+	intel_ring_reset(ce->ring, ce->ring->emit);
+
+	regs = memset(ce->lrc_reg_state, 0, PAGE_SIZE);
+	execlists_init_reg_state(regs, ce, ce->engine, ce->ring, true);
 	__execlists_update_reg_state(ce, ce->engine);
+
+	/* Avoid trying to reload the garbage */
+	regs[CTX_CONTEXT_CONTROL] |=
+		_MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+
+	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
 static const struct intel_context_ops execlists_context_ops = {
@@ -3968,7 +3982,6 @@ static void init_common_reg_state(u32 * const regs,
 					    CTX_CTRL_RS_CTX_ENABLE);
 
 	regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
-	regs[CTX_BB_STATE] = RING_BB_PPGTT;
 }
 
 static void init_wa_bb_reg_state(u32 * const regs,
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 066c4eddf5d0..843111b7b015 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1347,7 +1347,7 @@ static int ring_context_pin(struct intel_context *ce)
 
 static void ring_context_reset(struct intel_context *ce)
 {
-	intel_ring_reset(ce->ring, 0);
+	intel_ring_reset(ce->ring, ce->ring->emit);
 }
 
 static const struct intel_context_ops ring_context_ops = {
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
