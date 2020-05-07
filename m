Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE01C8E40
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 16:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949536E9B2;
	Thu,  7 May 2020 14:21:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395476E114
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 14:21:29 +0000 (UTC)
IronPort-SDR: BPx3a8EXhdToDd8n1/mRHRU7W27WlCeWWSy4QxQouYV5x9CVLGfCA5x11yc1hbZ1YVWOsn4Uyj
 XeY07tHGoT9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:21:28 -0700
IronPort-SDR: U1BD+K9sJleYByR1udu+6tdkmdkM4TfzmEpoWEC5xVmpP5pBTJVyy/dYj31iVOS0n3VzvnUNyr
 vcZ4j1+HgJNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="295737727"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 07 May 2020 07:21:27 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 2AEB08408A3; Thu,  7 May 2020 17:20:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 May 2020 17:20:45 +0300
Message-Id: <20200507142045.8668-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <158885907681.20858.14209789974764134586@build.alporthouse.com>
References: <158885907681.20858.14209789974764134586@build.alporthouse.com>
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
v3: bug on if not found (Chris)

References: d248b371f747 ("drm/i915/gen12: Invalidate aux table entries forcibly")
References bspec#43904, hsdes#1809175790
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Chuansheng Liu <chuansheng.liu@intel.com>
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 86 +++++++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h     |  6 ++
 2 files changed, 87 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index bbdb0e2a4571..e12916e2799b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4539,11 +4539,36 @@ static u32 preparser_disable(bool state)
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
+	GEM_BUG_ON("unknown aux_inv_reg\n");
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
 
@@ -4612,7 +4637,7 @@ static int gen12_emit_flush_render(struct i915_request *request,
 		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
 
 		/* hsdes: 1809175790 */
-		cs = gen12_emit_aux_table_inv(request, cs);
+		cs = gen12_emit_aux_table_inv(GEN12_GFX_CCS_AUX_NV, cs);
 
 		*cs++ = preparser_disable(false);
 		intel_ring_advance(request, cs);
@@ -4621,6 +4646,56 @@ static int gen12_emit_flush_render(struct i915_request *request,
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
@@ -4854,9 +4929,10 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
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
