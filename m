Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9771B6342
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 20:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38006E984;
	Thu, 23 Apr 2020 18:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F8B6E984
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 18:24:27 +0000 (UTC)
IronPort-SDR: dvd2WlV6itkvnzMS0WnxtvbWWhqeLWizhu/iW4xlVsI2PucS0hS2ycjPpgCyXwz6oDCNTgIjDj
 oyOYLLgPjHTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 11:24:27 -0700
IronPort-SDR: 6DHFatSFC4qBbDSaAZF6FoMNwcKCHhJBmUZ22vi9G3Ese2bieHKIIn8ttU93josUHfve6uqbqs
 40r6eYAvgcrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="292365107"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 23 Apr 2020 11:24:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 1C812843AD3; Thu, 23 Apr 2020 21:23:57 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 21:23:51 +0300
Message-Id: <20200423182355.21837-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
References: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Add context batchbuffers to
 live_lrc_fixed
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add per ctx bb and indirect ctx bb to a live_lrc_fixed.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 14 +++++---------
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h | 14 ++++++++++----
 drivers/gpu/drm/i915/gt/selftest_lrc.c  | 15 +++++++++++++++
 3 files changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index dead24aaf45d..660f8c033e98 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4728,26 +4728,25 @@ static void init_common_reg_state(u32 * const regs,
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
+		regs[CTX_BB_PER_CTX_PTR(engine)] =
 			(ggtt_offset + wa_ctx->per_ctx.offset) | 0x01;
 	}
 
 	if (wa_ctx->indirect_ctx.size) {
 		const u32 ggtt_offset = i915_ggtt_offset(wa_ctx->vma);
 
-		regs[pos_bb_per_ctx + 2] =
+		regs[CTX_INDIRECT_PTR(engine)] =
 			(ggtt_offset + wa_ctx->indirect_ctx.offset) |
 			(wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
 
-		regs[pos_bb_per_ctx + 4] =
+		regs[CTX_INDIRECT_OFFSET(engine)] =
 			intel_lr_indirect_ctx_offset(engine) << 6;
 	}
 }
@@ -4797,10 +4796,7 @@ static void execlists_init_reg_state(u32 *regs,
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
index c7db2ecc375f..db1f8c24cfe6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -8,15 +8,18 @@
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
+#define CTX_BB_PER_CTX_PTR(engine)	(ctx_bb_per_ctx_ptr_offset(engine))
+#define CTX_INDIRECT_PTR(engine)	(CTX_BB_PER_CTX_PTR(engine) + 2)
+#define CTX_INDIRECT_OFFSET(engine)	(CTX_INDIRECT_PTR(engine) + 2)
 #define CTX_TIMESTAMP			(0x22 + 1)
 #define CTX_PDP3_UDW			(0x24 + 1)
 #define CTX_PDP3_LDW			(0x26 + 1)
@@ -31,8 +34,11 @@
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
-/* GEN12+ Reg State Context */
-#define GEN12_CTX_BB_PER_CTX_PTR		(0x12 + 1)
+static inline unsigned int
+ctx_bb_per_ctx_ptr_offset(const struct intel_engine_cs *engine)
+{
+	return INTEL_GEN(engine->i915) < 12 ? 0x18 + 1 : 0x12 + 1;
+}
 
 #define ASSIGN_CTX_PDP(ppgtt, reg_state, n) do { \
 	u32 *reg_state__ = (reg_state); \
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index da66303e0149..9ebd8694cc1c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4593,6 +4593,21 @@ static int live_lrc_fixed(void *arg)
 				CTX_BB_STATE - 1,
 				"BB_STATE"
 			},
+			{
+				i915_mmio_reg_offset(RING_BB_PER_CTX_PTR(engine->mmio_base)),
+				CTX_BB_PER_CTX_PTR(engine) - 1,
+				"RING_BB_PER_CTX_PTR"
+			},
+			{
+				i915_mmio_reg_offset(RING_INDIRECT_CTX(engine->mmio_base)),
+				CTX_INDIRECT_PTR(engine) - 1,
+				"RING_INDIRECT_CTX_PTR"
+			},
+			{
+				i915_mmio_reg_offset(RING_INDIRECT_CTX_OFFSET(engine->mmio_base)),
+				CTX_INDIRECT_OFFSET(engine) - 1,
+				"RING_INDIRECT_CTX_OFFSET"
+			},
 			{
 				i915_mmio_reg_offset(RING_CTX_TIMESTAMP(engine->mmio_base)),
 				CTX_TIMESTAMP - 1,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
