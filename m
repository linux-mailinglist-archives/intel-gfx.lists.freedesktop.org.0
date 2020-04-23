Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104DC1B6567
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 22:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FDED8825E;
	Thu, 23 Apr 2020 20:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF926E0F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 20:30:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21000812-1500050 
 for multiple; Thu, 23 Apr 2020 21:30:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 21:30:01 +0100
Message-Id: <20200423203001.23266-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423182440.21876-1-chris@chris-wilson.co.uk>
References: <20200423182440.21876-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Add context batchbuffers
 registers to live_lrc_fixed
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

From: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Add per ctx bb and indirect ctx bb register locations to live_lrc_fixed
for verification.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 110 ++++++++++++------------
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h |   7 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c  |  15 ++++
 3 files changed, 72 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index dead24aaf45d..3cd698c82396 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -238,6 +238,55 @@ __execlists_update_reg_state(const struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
 			     u32 head);
 
+static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
+{
+	if (INTEL_GEN(engine->i915) >= 12)
+		return 0x60;
+	else if (INTEL_GEN(engine->i915) >= 9)
+		return 0x54;
+	else if (engine->class == RENDER_CLASS)
+		return 0x58;
+	else
+		return -1;
+}
+
+static int lrc_wa_bb_per_ctx(const struct intel_engine_cs *engine)
+{
+	if (INTEL_GEN(engine->i915) >= 12)
+		return 0x12 + 1;
+	else
+		return 0x18 + 1;
+}
+
+static int lrc_indirect_ptr(const struct intel_engine_cs *engine)
+{
+	return lrc_wa_bb_per_ctx(engine) + 2;
+}
+
+static int lrc_indirect_offset(const struct intel_engine_cs *engine)
+{
+	return lrc_indirect_ptr(engine) + 2;
+}
+
+static u32 lrc_indirect_offset_default(const struct intel_engine_cs *engine)
+{
+	switch (INTEL_GEN(engine->i915)) {
+	default:
+		MISSING_CASE(INTEL_GEN(engine->i915));
+		fallthrough;
+	case 12:
+		return GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+	case 11:
+		return GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+	case 10:
+		return GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+	case 9:
+		return GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+	case 8:
+		return GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
+	}
+}
+
 static u32 intel_context_get_runtime(const struct intel_context *ce)
 {
 	/*
@@ -1102,18 +1151,6 @@ static void intel_engine_context_out(struct intel_engine_cs *engine)
 	write_sequnlock_irqrestore(&engine->stats.lock, flags);
 }
 
-static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
-{
-	if (INTEL_GEN(engine->i915) >= 12)
-		return 0x60;
-	else if (INTEL_GEN(engine->i915) >= 9)
-		return 0x54;
-	else if (engine->class == RENDER_CLASS)
-		return 0x58;
-	else
-		return -1;
-}
-
 static void
 execlists_check_context(const struct intel_context *ce,
 			const struct intel_engine_cs *engine)
@@ -4673,39 +4710,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	return 0;
 }
 
-static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
-{
-	u32 indirect_ctx_offset;
-
-	switch (INTEL_GEN(engine->i915)) {
-	default:
-		MISSING_CASE(INTEL_GEN(engine->i915));
-		/* fall through */
-	case 12:
-		indirect_ctx_offset =
-			GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 11:
-		indirect_ctx_offset =
-			GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 10:
-		indirect_ctx_offset =
-			GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 9:
-		indirect_ctx_offset =
-			GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	case 8:
-		indirect_ctx_offset =
-			GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
-		break;
-	}
-
-	return indirect_ctx_offset;
-}
-
 
 static void init_common_reg_state(u32 * const regs,
 				  const struct intel_engine_cs *engine,
@@ -4728,27 +4732,26 @@ static void init_common_reg_state(u32 * const regs,
 }
 
 static void init_wa_bb_reg_state(u32 * const regs,
-				 const struct intel_engine_cs *engine,
-				 u32 pos_bb_per_ctx)
+				 const struct intel_engine_cs *engine)
 {
 	const struct i915_ctx_workarounds * const wa_ctx = &engine->wa_ctx;
 
 	if (wa_ctx->per_ctx.size) {
 		const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
 
-		regs[pos_bb_per_ctx] =
+		regs[lrc_wa_bb_per_ctx(engine)] =
 			(ggtt_offset + wa_ctx->per_ctx.offset) | 0x01;
 	}
 
 	if (wa_ctx->indirect_ctx.size) {
 		const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
 
-		regs[pos_bb_per_ctx + 2] =
+		regs[lrc_indirect_ptr(engine)] =
 			(ggtt_offset + wa_ctx->indirect_ctx.offset) |
 			(wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
 
-		regs[pos_bb_per_ctx + 4] =
-			intel_lr_indirect_ctx_offset(engine) << 6;
+		regs[lrc_indirect_offset(engine)] =
+			lrc_indirect_offset_default(engine) << 6;
 	}
 }
 
@@ -4797,10 +4800,7 @@ static void execlists_init_reg_state(u32 *regs,
 	init_common_reg_state(regs, engine, ring, inhibit);
 	init_ppgtt_reg_state(regs, vm_alias(ce->vm));
 
-	init_wa_bb_reg_state(regs, engine,
-			     INTEL_GEN(engine->i915) >= 12 ?
-			     GEN12_CTX_BB_PER_CTX_PTR :
-			     CTX_BB_PER_CTX_PTR);
+	init_wa_bb_reg_state(regs, engine);
 
 	__reset_stop_ring(regs, engine);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index d39b72590e40..003a4ba7bce0 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -8,15 +8,15 @@
 #define _INTEL_LRC_REG_H_
 
 #include <linux/types.h>
+#include "i915_drv.h"
 
-/* GEN8 to GEN11 Reg State Context */
+/* GEN8 to GEN12 Reg State Context */
 #define CTX_CONTEXT_CONTROL		(0x02 + 1)
 #define CTX_RING_HEAD			(0x04 + 1)
 #define CTX_RING_TAIL			(0x06 + 1)
 #define CTX_RING_START			(0x08 + 1)
 #define CTX_RING_CTL			(0x0a + 1)
 #define CTX_BB_STATE			(0x10 + 1)
-#define CTX_BB_PER_CTX_PTR		(0x18 + 1)
 #define CTX_TIMESTAMP			(0x22 + 1)
 #define CTX_PDP3_UDW			(0x24 + 1)
 #define CTX_PDP3_LDW			(0x26 + 1)
@@ -30,9 +30,6 @@
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
-/* GEN12+ Reg State Context */
-#define GEN12_CTX_BB_PER_CTX_PTR		(0x12 + 1)
-
 #define ASSIGN_CTX_PDP(ppgtt, reg_state, n) do { \
 	u32 *reg_state__ = (reg_state); \
 	const u64 addr__ = i915_page_dir_dma_addr((ppgtt), (n)); \
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index fc3f9a248764..bcf15b620b5e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4593,6 +4593,21 @@ static int live_lrc_fixed(void *arg)
 				CTX_BB_STATE - 1,
 				"BB_STATE"
 			},
+			{
+				i915_mmio_reg_offset(RING_BB_PER_CTX_PTR(engine->mmio_base)),
+				lrc_wa_bb_per_ctx(engine) - 1,
+				"RING_BB_PER_CTX_PTR"
+			},
+			{
+				i915_mmio_reg_offset(RING_INDIRECT_CTX(engine->mmio_base)),
+				lrc_indirect_ptr(engine) - 1,
+				"RING_INDIRECT_CTX_PTR"
+			},
+			{
+				i915_mmio_reg_offset(RING_INDIRECT_CTX_OFFSET(engine->mmio_base)),
+				lrc_indirect_offset(engine) - 1,
+				"RING_INDIRECT_CTX_OFFSET"
+			},
 			{
 				i915_mmio_reg_offset(RING_CTX_TIMESTAMP(engine->mmio_base)),
 				CTX_TIMESTAMP - 1,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
