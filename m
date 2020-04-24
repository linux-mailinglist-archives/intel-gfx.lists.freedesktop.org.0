Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 015231B7B00
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDFC6EAB5;
	Fri, 24 Apr 2020 16:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02456EAB7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:02:28 +0000 (UTC)
IronPort-SDR: yVu4LmEkwMxSL5PPn80ps2eh211H4sYCCeQRFB03UWkyWm2qZ7cX5a8uDH4+TjgOc7AHSrZ1Y5
 iRMI6xNooQWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:02:22 -0700
IronPort-SDR: 3gideM4MRTWIl4YbBqrsGr5y+zA5SAW4LwQ6MrQDs3NnFXQEZj4snItBuE6GFWXYH6bUXDS80n
 0gnpjxjM+ZIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="245277919"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga007.jf.intel.com with ESMTP; 24 Apr 2020 09:02:21 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 05058843AD5; Fri, 24 Apr 2020 19:01:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 19:01:50 +0300
Message-Id: <20200424160150.19704-4-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
References: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Use indirect ctx bb to mend
 CMD_BUF_CCTL
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

Use indirect ctx bb to load cmd buffer control value
from context image to avoid corruption.

v2: add to lrc layout (Chris)
v3: end to a cacheline (Chris)
v4: add to lrc fixed (Chris)

Testcase: igt/i915_selftest/gt_lrc
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 109 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/selftest_lrc.c |   5 ++
 drivers/gpu/drm/i915/i915_reg.h        |   1 +
 3 files changed, 112 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4e9213125f6d..72d89d9c90ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -282,6 +282,14 @@ static int lrc_ring_indirect_offset(const struct intel_engine_cs *engine)
 	return x + 2;
 }
 
+static int lrc_ring_cmd_buf_cctl(const struct intel_engine_cs *engine)
+{
+	if (engine->class != RENDER_CLASS)
+		return -1;
+
+	return 0xb6;
+}
+
 static u32
 lrc_ring_indirect_offset_default(const struct intel_engine_cs *engine)
 {
@@ -596,7 +604,7 @@ static void set_offsets(u32 *regs,
 #define REG16(x) \
 	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
 	(((x) >> 2) & 0x7f)
-#define END(x) 0, (x)
+#define END(total_state_size) 0, (total_state_size)
 {
 	const u32 base = engine->mmio_base;
 
@@ -1004,8 +1012,63 @@ static const u8 gen12_rcs_offsets[] = {
 	NOP(6),
 	LRI(1, 0),
 	REG(0x0c8),
+	NOP(3+9+1),
+
+	LRI(51, POSTED),
+	REG16(0x588),
+	REG16(0x588),
+	REG16(0x588),
+	REG16(0x588),
+	REG16(0x588),
+	REG16(0x588),
+	REG(0x028),
+	REG(0x09c),
+	REG(0x0c0),
+	REG(0x178),
+	REG(0x17c),
+	REG16(0x358),
+	REG(0x170),
+	REG(0x150),
+	REG(0x154),
+	REG(0x158),
+	REG16(0x41c),
+	REG16(0x600),
+	REG16(0x604),
+	REG16(0x608),
+	REG16(0x60c),
+	REG16(0x610),
+	REG16(0x614),
+	REG16(0x618),
+	REG16(0x61c),
+	REG16(0x620),
+	REG16(0x624),
+	REG16(0x628),
+	REG16(0x62c),
+	REG16(0x630),
+	REG16(0x634),
+	REG16(0x638),
+	REG16(0x63c),
+	REG16(0x640),
+	REG16(0x644),
+	REG16(0x648),
+	REG16(0x64c),
+	REG16(0x650),
+	REG16(0x654),
+	REG16(0x658),
+	REG16(0x65c),
+	REG16(0x660),
+	REG16(0x664),
+	REG16(0x668),
+	REG16(0x66c),
+	REG16(0x670),
+	REG16(0x674),
+	REG16(0x678),
+	REG16(0x67c),
+	REG(0x068),
+	REG(0x084),
+	NOP(1),
 
-	END(80)
+	END(192)
 };
 
 #undef END
@@ -3235,6 +3298,39 @@ gen12_emit_restore_scratch(struct intel_context *ce, u32 *cs)
 	return cs;
 }
 
+static u32 *
+gen12_emit_cmd_buf_wa(struct intel_context *ce, u32 *cs)
+{
+	const u32 lrc_offset = i915_ggtt_offset(ce->state) +
+		LRC_STATE_OFFSET;
+	const u32 scratch_reg = i915_mmio_reg_offset(GEN8_RING_CS_GPR(0, 0));
+
+	GEM_BUG_ON(lrc_ring_cmd_buf_cctl(ce->engine) == -1);
+
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + lrc_ring_cmd_buf_cctl(ce->engine) * sizeof(u32);
+	*cs++ = 0;
+
+	*cs++ = MI_LOAD_REGISTER_REG |
+		MI_LRR_SOURCE_CS_MMIO | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = i915_mmio_reg_offset(RING_CMD_BUF_CCTL(0));
+
+	return cs;
+}
+
+static u32 *
+gen12_emit_indirect_ctx_rcs(struct intel_context *ce, u32 *cs)
+{
+	cs = gen12_emit_timestamp_wa(ce, cs);
+	cs = gen12_emit_cmd_buf_wa(ce, cs);
+	cs = gen12_emit_restore_scratch(ce, cs);
+
+	return cs;
+}
+
 static u32 *
 gen12_emit_indirect_ctx_xcs(struct intel_context *ce, u32 *cs)
 {
@@ -3316,9 +3412,16 @@ __execlists_update_reg_state(struct intel_context *ce,
 	}
 
 	if (ce->ctx_bb_offset) {
+		u32 *(*fn)(struct intel_context *ce, u32 *cs);
+
+		if (ce->engine->class == RENDER_CLASS)
+			fn = gen12_emit_indirect_ctx_rcs;
+		else
+			fn = gen12_emit_indirect_ctx_xcs;
+
 		/* Mutually exclusive wrt to global indirect bb */
 		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
-		setup_indirect_ctx_bb(ce, gen12_emit_indirect_ctx_xcs);
+		setup_indirect_ctx_bb(ce, fn);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 89a3bbf72a7a..060a7159ae02 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4618,6 +4618,11 @@ static int live_lrc_fixed(void *arg)
 				CTX_CS_GPR_0 - 1,
 				"RING_CS_GPR_0"
 			},
+			{
+				i915_mmio_reg_offset(RING_CMD_BUF_CCTL(engine->mmio_base)),
+				lrc_ring_cmd_buf_cctl(engine),
+				"RING_CMD_BUF_CCTL"
+			},
 			{ },
 		}, *t;
 		u32 *hw;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4a1965467374..0ef30e3cdd3f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2657,6 +2657,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define RING_DMA_FADD_UDW(base)	_MMIO((base) + 0x60) /* gen8+ */
 #define RING_INSTPM(base)	_MMIO((base) + 0xc0)
 #define RING_MI_MODE(base)	_MMIO((base) + 0x9c)
+#define RING_CMD_BUF_CCTL(base) _MMIO((base) + 0x84)
 #define INSTPS		_MMIO(0x2070) /* 965+ only */
 #define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
 #define ACTHD_I965	_MMIO(0x2074)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
