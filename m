Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2812D57A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 02:33:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8CA6E0A2;
	Tue, 31 Dec 2019 01:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1A66E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 01:33:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19730573-1500050 
 for multiple; Tue, 31 Dec 2019 01:33:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 01:33:06 +0000
Message-Id: <20191231013309.3998505-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Clear LRC image inline
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

When creating the initial LRC image, we also want to clear the MI_NOOPs
and register values. Rather than use a blanket memset beforehand, apply
the clears inline, close the context image and force inhibition of the
uninitialised reminder.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 88 +++++++++++++++-----------
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 13 ++--
 2 files changed, 58 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 72490e326d66..4f91151843d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -549,9 +549,15 @@ static void hex2offsets(FILE *file)
 }
 */
 
-static u32 *set_offsets(u32 *regs,
+static inline unsigned int dword_in_page(void *addr)
+{
+	return offset_in_page(addr) / sizeof(u32);
+}
+
+static void set_offsets(u32 *regs,
 			const u8 *data,
-			const struct intel_engine_cs *engine)
+			const struct intel_engine_cs *engine,
+			bool clear)
 #define NOP(x) (BIT(7) | (x))
 #define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))
 #define POSTED BIT(0)
@@ -559,7 +565,7 @@ static u32 *set_offsets(u32 *regs,
 #define REG16(x) \
 	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
 	(((x) >> 2) & 0x7f)
-#define END() 0
+#define END(x) 0, (x)
 {
 	const u32 base = engine->mmio_base;
 
@@ -567,7 +573,10 @@ static u32 *set_offsets(u32 *regs,
 		u8 count, flags;
 
 		if (*data & BIT(7)) { /* skip */
-			regs += *data++ & ~BIT(7);
+			count = *data++ & ~BIT(7);
+			if (clear)
+				memset32(regs, MI_NOOP, count);
+			regs += count;
 			continue;
 		}
 
@@ -593,12 +602,25 @@ static u32 *set_offsets(u32 *regs,
 				offset |= v & ~BIT(7);
 			} while (v & BIT(7));
 
-			*regs = base + (offset << 2);
+			regs[0] = base + (offset << 2);
+			if (clear)
+				regs[1] = 0;
 			regs += 2;
 		} while (--count);
 	}
 
-	return regs;
+	if (clear) {
+		u8 count = *++data;
+
+		/* Clear past the tail for HW access */
+		GEM_BUG_ON(dword_in_page(regs) > count);
+		memset32(regs, MI_NOOP, count - dword_in_page(regs));
+
+		/* Close the batch; used mainly by live_lrc_layout() */
+		*regs = MI_BATCH_BUFFER_END;
+		if (INTEL_GEN(engine->i915) >= 10)
+			*regs |= BIT(0);
+	}
 }
 
 static const u8 gen8_xcs_offsets[] = {
@@ -633,7 +655,7 @@ static const u8 gen8_xcs_offsets[] = {
 	REG16(0x200),
 	REG(0x028),
 
-	END(),
+	END(80)
 };
 
 static const u8 gen9_xcs_offsets[] = {
@@ -717,7 +739,7 @@ static const u8 gen9_xcs_offsets[] = {
 	REG16(0x67c),
 	REG(0x068),
 
-	END(),
+	END(176)
 };
 
 static const u8 gen12_xcs_offsets[] = {
@@ -749,7 +771,7 @@ static const u8 gen12_xcs_offsets[] = {
 	REG16(0x274),
 	REG16(0x270),
 
-	END(),
+	END(80)
 };
 
 static const u8 gen8_rcs_offsets[] = {
@@ -786,7 +808,7 @@ static const u8 gen8_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0xc8),
 
-	END()
+	END(80)
 };
 
 static const u8 gen9_rcs_offsets[] = {
@@ -870,7 +892,7 @@ static const u8 gen9_rcs_offsets[] = {
 	REG16(0x67c),
 	REG(0x68),
 
-	END()
+	END(176)
 };
 
 static const u8 gen11_rcs_offsets[] = {
@@ -911,7 +933,7 @@ static const u8 gen11_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0x0c8),
 
-	END(),
+	END(80)
 };
 
 static const u8 gen12_rcs_offsets[] = {
@@ -952,7 +974,7 @@ static const u8 gen12_rcs_offsets[] = {
 	LRI(1, 0),
 	REG(0x0c8),
 
-	END(),
+	END(80)
 };
 
 #undef END
@@ -1590,7 +1612,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 static void virtual_update_register_offsets(u32 *regs,
 					    struct intel_engine_cs *engine)
 {
-	set_offsets(regs, reg_offsets(engine), engine);
+	set_offsets(regs, reg_offsets(engine), engine, false);
 }
 
 static bool virtual_matches(const struct virtual_engine *ve,
@@ -4104,15 +4126,19 @@ static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
 
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
 }
@@ -4170,7 +4196,7 @@ static void execlists_init_reg_state(u32 *regs,
 				     const struct intel_context *ce,
 				     const struct intel_engine_cs *engine,
 				     const struct intel_ring *ring,
-				     bool close)
+				     bool inhibit)
 {
 	/*
 	 * A context is actually a big batch buffer with several
@@ -4182,15 +4208,9 @@ static void execlists_init_reg_state(u32 *regs,
 	 *
 	 * Must keep consistent with virtual_update_register_offsets().
 	 */
-	u32 *bbe = set_offsets(regs, reg_offsets(engine), engine);
+	set_offsets(regs, reg_offsets(engine), engine, inhibit);
 
-	if (close) { /* Close the batch; used mainly by live_lrc_layout() */
-		*bbe = MI_BATCH_BUFFER_END;
-		if (INTEL_GEN(engine->i915) >= 10)
-			*bbe |= BIT(0);
-	}
-
-	init_common_reg_state(regs, engine, ring);
+	init_common_reg_state(regs, engine, ring, inhibit);
 	init_ppgtt_reg_state(regs, vm_alias(ce->vm));
 
 	init_wa_bb_reg_state(regs, engine,
@@ -4209,7 +4229,6 @@ populate_lr_context(struct intel_context *ce,
 {
 	bool inhibit = true;
 	void *vaddr;
-	u32 *regs;
 	int ret;
 
 	vaddr = i915_gem_object_pin_map(ctx_obj, I915_MAP_WB);
@@ -4239,11 +4258,8 @@ populate_lr_context(struct intel_context *ce,
 
 	/* The second page of the context object contains some fields which must
 	 * be set up prior to the first execution. */
-	regs = vaddr + LRC_STATE_PN * PAGE_SIZE;
-	execlists_init_reg_state(regs, ce, engine, ring, inhibit);
-	if (inhibit)
-		regs[CTX_CONTEXT_CONTROL] |=
-			_MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
+	execlists_init_reg_state(vaddr + LRC_STATE_PN * PAGE_SIZE,
+				 ce, engine, ring, inhibit);
 
 	ret = 0;
 err_unpin_ctx:
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 943b623f00e9..627613d85db8 100644
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
@@ -3390,8 +3390,7 @@ static int live_lrc_layout(void *arg)
 		}
 		hw += LRC_STATE_PN * PAGE_SIZE / sizeof(*hw);
 
-		lrc = memset(mem, 0, PAGE_SIZE);
-		execlists_init_reg_state(lrc,
+		execlists_init_reg_state(memset(lrc, POISON_INUSE, PAGE_SIZE),
 					 engine->kernel_context,
 					 engine,
 					 engine->kernel_context->ring,
@@ -3461,7 +3460,7 @@ static int live_lrc_layout(void *arg)
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
