Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6468712D1AC
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B550989E7B;
	Mon, 30 Dec 2019 16:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37B889BF0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:01:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19727705-1500050 
 for multiple; Mon, 30 Dec 2019 16:01:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Dec 2019 16:01:08 +0000
Message-Id: <20191230160112.3838434-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/gt: Clear LRC image inline
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When creating the initial LRC image, we also want to clear the MI_NOOPs
and register values. Rather than use a blanket memset beforehand, apply
the clears inline, close the context image and force inhibition of the
uninitialised reminder.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 52 +++++++++++++++-----------
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 11 +++---
 2 files changed, 35 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 14e7e179855f..f0618e6aabd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -488,9 +488,10 @@ lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
 	return desc;
 }
 
-static u32 *set_offsets(u32 *regs,
+static void set_offsets(u32 *regs,
 			const u8 *data,
-			const struct intel_engine_cs *engine)
+			const struct intel_engine_cs *engine,
+			bool clear)
 #define NOP(x) (BIT(7) | (x))
 #define LRI(count, flags) ((flags) << 6 | (count))
 #define POSTED BIT(0)
@@ -506,7 +507,10 @@ static u32 *set_offsets(u32 *regs,
 		u8 count, flags;
 
 		if (*data & BIT(7)) { /* skip */
-			regs += *data++ & ~BIT(7);
+			count = *data++ & ~BIT(7);
+			if (clear)
+				memset32(regs, 0, count);
+			regs += count;
 			continue;
 		}
 
@@ -532,12 +536,18 @@ static u32 *set_offsets(u32 *regs,
 				offset |= v & ~BIT(7);
 			} while (v & BIT(7));
 
-			*regs = base + (offset << 2);
+			regs[0] = base + (offset << 2);
+			if (clear)
+				regs[1] = MI_NOOP;
 			regs += 2;
 		} while (--count);
 	}
 
-	return regs;
+	if (clear) { /* Close the batch; used mainly by live_lrc_layout() */
+		*regs = MI_BATCH_BUFFER_END;
+		if (INTEL_GEN(engine->i915) >= 10)
+			*regs |= BIT(0);
+	}
 }
 
 static const u8 gen8_xcs_offsets[] = {
@@ -1443,7 +1453,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 static void virtual_update_register_offsets(u32 *regs,
 					    struct intel_engine_cs *engine)
 {
-	set_offsets(regs, reg_offsets(engine), engine);
+	set_offsets(regs, reg_offsets(engine), engine, false);
 }
 
 static bool virtual_matches(const struct virtual_engine *ve,
@@ -3957,15 +3967,19 @@ static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
 
 static void init_common_reg_state(u32 * const regs,
 				  const struct intel_engine_cs *engine,
-				  const struct intel_ring *ring)
+				  const struct intel_ring *ring,
+				  bool inhibit)
 {
-	regs[CTX_CONTEXT_CONTROL] =
-		_MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT) |
-		_MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
+	u32 ctl;
+
+	ctl = _MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
+	ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+	if (inhibit)
+		ctl |= CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT;
 	if (INTEL_GEN(engine->i915) < 11)
-		regs[CTX_CONTEXT_CONTROL] |=
-			_MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT |
-					    CTX_CTRL_RS_CTX_ENABLE);
+		ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT |
+					   CTX_CTRL_RS_CTX_ENABLE);
+	regs[CTX_CONTEXT_CONTROL] = ctl;
 
 	regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
 	regs[CTX_BB_STATE] = RING_BB_PPGTT;
@@ -4024,7 +4038,7 @@ static void execlists_init_reg_state(u32 *regs,
 				     const struct intel_context *ce,
 				     const struct intel_engine_cs *engine,
 				     const struct intel_ring *ring,
-				     bool close)
+				     bool inhibit)
 {
 	/*
 	 * A context is actually a big batch buffer with several
@@ -4036,15 +4050,9 @@ static void execlists_init_reg_state(u32 *regs,
 	 *
 	 * Must keep consistent with virtual_update_register_offsets().
 	 */
-	u32 *bbe = set_offsets(regs, reg_offsets(engine), engine);
-
-	if (close) { /* Close the batch; used mainly by live_lrc_layout() */
-		*bbe = MI_BATCH_BUFFER_END;
-		if (INTEL_GEN(engine->i915) >= 10)
-			*bbe |= BIT(0);
-	}
+	set_offsets(regs, reg_offsets(engine), engine, inhibit);
 
-	init_common_reg_state(regs, engine, ring);
+	init_common_reg_state(regs, engine, ring, inhibit);
 	init_ppgtt_reg_state(regs, vm_alias(ce->vm));
 
 	init_wa_bb_reg_state(regs, engine,
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 9ec9833c9c7b..dd3882e8958c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3362,7 +3362,7 @@ static int live_lrc_layout(void *arg)
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	u32 *mem;
+	u32 *lrc;
 	int err;
 
 	/*
@@ -3370,13 +3370,13 @@ static int live_lrc_layout(void *arg)
 	 * match the layout saved by HW.
 	 */
 
-	mem = kmalloc(PAGE_SIZE, GFP_KERNEL);
-	if (!mem)
+	lrc = kmalloc(PAGE_SIZE, GFP_KERNEL);
+	if (!lrc)
 		return -ENOMEM;
 
 	err = 0;
 	for_each_engine(engine, gt, id) {
-		u32 *hw, *lrc;
+		u32 *hw;
 		int dw;
 
 		if (!engine->default_state)
@@ -3390,7 +3390,6 @@ static int live_lrc_layout(void *arg)
 		}
 		hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
 
-		lrc = memset(mem, 0, PAGE_SIZE);
 		execlists_init_reg_state(lrc,
 					 engine->kernel_context,
 					 engine,
@@ -3454,7 +3453,7 @@ static int live_lrc_layout(void *arg)
 			break;
 	}
 
-	kfree(mem);
+	kfree(lrc);
 	return err;
 }
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
