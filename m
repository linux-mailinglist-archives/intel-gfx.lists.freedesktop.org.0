Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B511C8CBE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 15:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E266E984;
	Thu,  7 May 2020 13:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23126E984
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 13:42:05 +0000 (UTC)
IronPort-SDR: +5ReUrHD4eOuWUgB3AZixUvG5Ust4OIYdRvtHuijIGN9CrovxQ2CYsnF3od+peX6hn+wYknkq7
 8QU9MLgb2Hmw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 06:42:05 -0700
IronPort-SDR: LOwDSU8ZWlDa3Dz/6aS4ZWScDNNtch6VsKBDrC6t75Kc6ZhsFDMGrU/gJEe+oTANbRkXGUW9QL
 C8IuKWSLPjjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="305122505"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 07 May 2020 06:42:03 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 28F178408A3; Thu,  7 May 2020 16:41:25 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 16:41:22 +0300
Message-Id: <20200507134122.17732-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/gen12: Add aux table invalidate for
 all engines
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All engines, exception being blitter as it does not
care about the form, can access compressed surfaces.

So we need to add forced aux table invalidates
for those engines.

v2: virtual instance masking (Chris)

References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")
References bspec#43904, hsdes#1809175790
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Chuansheng Liu <chuansheng.liu@intel.com>
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 84 +++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h     |  6 +++
 2 files changed, 85 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bbdb0e2a4571..2fffedc99806 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4539,11 +4539,34 @@ static u32 preparser_disable(bool state)
 	return MI_ARB_CHECK | 1 << 8 | state;
 }
 
+static i915_reg_t aux_inv_reg(const struct intel_engine_cs *engine)
+{
+	static const i915_reg_t vd[] = {
+		GEN12_VD0_AUX_NV,
+		GEN12_VD1_AUX_NV,
+		GEN12_VD2_AUX_NV,
+		GEN12_VD3_AUX_NV,
+	};
+
+	static const i915_reg_t ve[] = {
+		GEN12_VE0_AUX_NV,
+		GEN12_VE1_AUX_NV,
+	};
+
+	if (engine->class == VIDEO_DECODE_CLASS)
+		return vd[engine->instance];
+
+	if (engine->class == VIDEO_ENHANCEMENT_CLASS)
+		return ve[engine->instance];
+
+	return INVALID_MMIO_REG;
+}
+
 static u32 *
-gen12_emit_aux_table_inv(struct i915_request *rq, u32 *cs)
+gen12_emit_aux_table_inv(const i915_reg_t inv_reg, u32 *cs)
 {
 	*cs++ = MI_LOAD_REGISTER_IMM(1);
-	*cs++ = i915_mmio_reg_offset(GEN12_GFX_CCS_AUX_NV);
+	*cs++ = i915_mmio_reg_offset(inv_reg);
 	*cs++ = AUX_INV;
 	*cs++ = MI_NOOP;
 
@@ -4612,7 +4635,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
 
 		/* hsdes: 1809175790 */
-		cs = gen12_emit_aux_table_inv(request, cs);
+		cs = gen12_emit_aux_table_inv(GEN12_GFX_CCS_AUX_NV, cs);
 
 		*cs++ = preparser_disable(false);
 		intel_ring_advance(request, cs);
@@ -4621,6 +4644,56 @@ static int gen12_emit_flush_render(struct i915_request *request,
 	return 0;
 }
 
+static int gen12_emit_flush(struct i915_request *request, u32 mode)
+{
+	intel_engine_mask_t aux_inv = 0;
+	u32 cmd, *cs;
+
+	if (mode & EMIT_INVALIDATE)
+		aux_inv = request->engine->mask & ~BIT(BCS0);
+
+	cs = intel_ring_begin(request,
+			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
+	if (IS_ERR(cs))
+		return PTR_ERR(cs);
+
+	cmd = MI_FLUSH_DW + 1;
+
+	/* We always require a command barrier so that subsequent
+	 * commands, such as breadcrumb interrupts, are strictly ordered
+	 * wrt the contents of the write cache being flushed to memory
+	 * (and thus being coherent from the CPU).
+	 */
+	cmd |= MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;
+
+	if (mode & EMIT_INVALIDATE) {
+		cmd |= MI_INVALIDATE_TLB;
+		if (request->engine->class == VIDEO_DECODE_CLASS)
+			cmd |= MI_INVALIDATE_BSD;
+	}
+
+	*cs++ = cmd;
+	*cs++ = LRC_PPHWSP_SCRATCH_ADDR;
+	*cs++ = 0; /* upper addr */
+	*cs++ = 0; /* value */
+
+	if (aux_inv) { /* hsdes: 1809175790 */
+		struct intel_engine_cs *engine;
+		unsigned int tmp;
+
+		*cs++ = MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
+		for_each_engine_masked(engine, request->engine->gt,
+				       aux_inv, tmp) {
+			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
+			*cs++ = AUX_INV;
+		}
+		*cs++ = MI_NOOP;
+	}
+	intel_ring_advance(request, cs);
+
+	return 0;
+}
+
 /*
  * Reserve space for 2 NOOPs at the end of each request to be
  * used as a workaround for not being allowed to do lite
@@ -4854,9 +4927,10 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 	engine->emit_flush = gen8_emit_flush;
 	engine->emit_init_breadcrumb = gen8_emit_init_breadcrumb;
 	engine->emit_fini_breadcrumb = gen8_emit_fini_breadcrumb;
-	if (INTEL_GEN(engine->i915) >= 12)
+	if (INTEL_GEN(engine->i915) >= 12) {
 		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb;
-
+		engine->emit_flush = gen12_emit_flush;
+	}
 	engine->set_default_submission = intel_execlists_set_default_submission;
 
 	if (INTEL_GEN(engine->i915) < 11) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dc5952200a07..6c076a24eb82 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2558,6 +2558,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_PAT_INDEX(index)	_MMIO(0x4800 + (index) * 4)
 #define BSD_HWS_PGA_GEN7	_MMIO(0x04180)
 #define GEN12_GFX_CCS_AUX_NV	_MMIO(0x4208)
+#define GEN12_VD0_AUX_NV	_MMIO(0x4218)
+#define GEN12_VD1_AUX_NV	_MMIO(0x4228)
+#define GEN12_VD2_AUX_NV	_MMIO(0x4298)
+#define GEN12_VD3_AUX_NV	_MMIO(0x42A8)
+#define GEN12_VE0_AUX_NV	_MMIO(0x4238)
+#define GEN12_VE1_AUX_NV	_MMIO(0x42B8)
 #define   AUX_INV		REG_BIT(0)
 #define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
 #define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
