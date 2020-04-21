Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371721B29B6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858906E136;
	Tue, 21 Apr 2020 14:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029DC6E136
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:31:06 +0000 (UTC)
IronPort-SDR: MmNPPHkG61sVLUUpACuTQlkqzOY9kRMJAmMs7KjW5eImah8o1nQKeyyAN55njrGOSBV+UApj3R
 AxvSHuko+L+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:31:06 -0700
IronPort-SDR: QKQZLFBRoAZHPsYJypgE2RQ6WG9GFHD0cQs5mkeDvKiOETwBHwX+9hslqIUwcb6IvwDfO9n0ba
 CM19yiwZOefw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="291615576"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 21 Apr 2020 07:31:05 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id D22AE843785; Tue, 21 Apr 2020 17:30:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 17:30:31 +0300
Message-Id: <20200421143031.8463-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <158747602657.19285.10843658744602820734@build.alporthouse.com>
References: <158747602657.19285.10843658744602820734@build.alporthouse.com>
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Use indirect ctx bb to mend
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

Testcase: igt/i915_selftest/gt_lrc
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c     | 73 +++++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h |  1 +
 drivers/gpu/drm/i915/i915_reg.h         |  1 +
 3 files changed, 71 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cc4d1967d00b..751439f415cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -514,7 +514,7 @@ static void set_offsets(u32 *regs,
 #define REG16(x) \
 	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
 	(((x) >> 2) & 0x7f)
-#define END(x) 0, (x)
+#define END(total_state_size) 0, (total_state_size)
 {
 	const u32 base = engine->mmio_base;
 
@@ -922,8 +922,63 @@ static const u8 gen12_rcs_offsets[] = {
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
@@ -3207,7 +3262,7 @@ gen12_emit_timestamp_wa_lrm(struct intel_context *ce, u32 *cs)
 }
 
 static u32 *
-gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
+gen12_emit_render_ctx_wa(struct intel_context *ce, u32 *cs)
 {
 	const u32 lrc_offset = i915_ggtt_offset(ce->state) +
 		LRC_STATE_OFFSET;
@@ -3227,6 +3282,16 @@ gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
 	*cs++ = scratch_reg;
 	*cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
 
+	*cs++ = MI_LOAD_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = lrc_offset + CTX_CMD_BUF_CCTL * sizeof(u32);
+	*cs++ = 0;
+
+	*cs++ = MI_LOAD_REGISTER_REG | MI_LRI_LRM_CS_MMIO;
+	*cs++ = scratch_reg;
+	*cs++ = i915_mmio_reg_offset(RING_CMD_BUF_CCTL(0));
+
 	return cs;
 }
 
@@ -3290,7 +3355,7 @@ gen12_setup_timestamp_ctx_wa(struct intel_context *ce)
 
 	fn = gen12_emit_timestamp_wa_lrm;
 	if (ce->engine->class == RENDER_CLASS)
-		fn = gen12_emit_timestamp_wa_lrr;
+		fn = gen12_emit_render_ctx_wa;
 
 	setup_indirect_ctx_bb(ce, fn);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index bb444614f33b..6c81a3a815ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -27,6 +27,7 @@
 #define CTX_PDP0_UDW			(0x30 + 1)
 #define CTX_PDP0_LDW			(0x32 + 1)
 #define CTX_R_PWR_CLK_STATE		(0x42 + 1)
+#define CTX_CMD_BUF_CCTL		(0xB6 + 1)
 
 #define GEN9_CTX_RING_MI_MODE		0x54
 
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
