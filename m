Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FFF94FD7C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 07:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78BA10E2AA;
	Tue, 13 Aug 2024 05:59:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISSifhLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2F410E2AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 05:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723528763; x=1755064763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VQQNHVZ6yV8oM7cJvghBl2HuewXscGdLVC/MPuBd24A=;
 b=ISSifhLvPk4z8xFr4o2xcFlY3bf4DiAkVlGHcpRe1Ljj3eMfaI8/5Rl1
 dQr2qSlE5RbectN5A3WoC+tY9bMHLM3VwHyoAa/KivUHrmhHzzU0Nb2B7
 ZhRnxV8j3Bquul46KR3Cp1Tf3DaBDU7TC0+P8xaeplVMXkZSbpxVLR99Z
 pL8lXM/vCG7EADPLxPEEF315TUY720EP+5qg2FvBVtTFaLSne04QnkUjR
 d9++OYzRUuWQ4UNalDGLsrkbg97z7jK+z3Ag33tnfVVCHWV0kR8PPFvSk
 qbtIEhdgkG1SUeIDitmMNMhtRFyzpZ/tlvJbuj+D9n4ZwLQdEh9fMMGGp w==;
X-CSE-ConnectionGUID: 4TKULn6MRwiGZb9Dgj48ew==
X-CSE-MsgGUID: bZqoe8AbSBWuB8OM44ho1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="12978893"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="12978893"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 22:59:23 -0700
X-CSE-ConnectionGUID: LVIVPnVNQi2LeQUNf6Bpjw==
X-CSE-MsgGUID: Mh8RyXPmQC+9uMiNh5/OOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58500516"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa009.fm.intel.com with ESMTP; 12 Aug 2024 22:59:20 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: venkata.ramana.nayana@intel.com, john.c.harrison@intel.com,
 chris.p.wilson@intel.com, tejas.upadhyay@intel.com, andi.shyti@intel.com,
 nitin.r.gote@intel.com
Subject: [PATCH v10] drm/i915: WA context support for L3flush
Date: Tue, 13 Aug 2024 11:46:57 +0530
Message-Id: <20240813061657.925443-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>

Adding support to create a w/a l3flush context that has WABB programmed to
do the global L3 cache inv. This context is required to be executed after
every BLT context switch by the GuC FW. So KMD needs to prepare this
context, program it and pass the context info using KLV style in the
KMD-GUC shared additional data struct info structure.

Another key requirement is to have this context dummy mapped so that the
HW doesn't generate any PFs. This H/W issue may cause L3 cached GPUVAs
which belong to previous context to get associated with the l3flush
context. So, w/o dummy mapping, HW is expected to PF whenever these stale
addresses are referenced.

This patch has been co-developed with John Harrison.

v2: CONTEXT_WA_L3FLUSH bit set calling function change (Chris)
    Handled ce and ppgtt leaks (Chris)
v3: s/setup_dummy_context/setup_wa_l3flush_context (JohnH)
    Replace firmware wording with IFWI (JohnH)
    Inplace of REG_BIT(31) use meaningfull BIT define (JohnH)
    Replace few GUC #def with enum (JohnH)
v4: Replace 'dummy/wa_l3flush' (JohnH)
v5 (Tejas): For old IFWI, print warning and let driver proceed (Matt)
            Adjust IS_DG2 check as G12 does not need this WA (Matt)
            Use correct WA# (Matt)
            Rename APIs to dg2 specific (Matt)
v6 (Tejas): Drop ppgtt->vm ref right after context create (Chris)
            Change variable to destroy context (Chris)
            Use MI_LRI for multiple reg ops (Chris)
v7 (Tejas): MTL does not have BCS0, handled it
v8 (Tejas): Resolve recursive merge error
v9 (Tejas): Use s/engine->uncore/engine->i915->uncore (Chris)
            Modify no.of regs 4->2 for MI_LRI (Chris)
            Unref ppgtt->vm only for err
            Modify GEM_BUG_ON for dg2_10/11
            Handle return value for l3flush context setup
v10 (Nitin): Rebase this patch.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h       |  9 +++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_engine.h        |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 60 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  2 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 46 ++++++++++++++
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  7 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    | 39 ++++++++++++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 +++-
 11 files changed, 179 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 9f523999acd1..bc30e3ca5580 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -305,6 +305,15 @@ static inline bool intel_context_use_semaphores(const struct intel_context *ce)
 	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
 }
 
+/*
+ * Some contexts are only used for special workarounds and should
+ * not be included in normal context operations.
+ */
+static inline bool intel_context_is_hidden(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_WA_L3FLUSH, &ce->flags);
+}
+
 static inline void intel_context_set_use_semaphores(struct intel_context *ce)
 {
 	set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 98c7f6052069..63d34b29f5c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -134,6 +134,7 @@ struct intel_context {
 #define CONTEXT_EXITING			13
 #define CONTEXT_LOW_LATENCY		14
 #define CONTEXT_OWN_STATE		15
+#define CONTEXT_WA_L3FLUSH		16
 
 	struct {
 		u64 timeout_us;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 40269e4c1e31..7c978a5a059a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -172,6 +172,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
 #define I915_GEM_HWS_GGTT_BIND		0x46
 #define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND * sizeof(u32))
+#define I915_GEM_HWS_WA_L3FLUSH         0x48
+#define I915_GEM_HWS_WA_L3FLUSH_ADDR	(I915_GEM_HWS_WA_L3FLUSH * sizeof(u32))
 #define I915_GEM_HWS_PXP		0x60
 #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
 #define I915_GEM_HWS_GSC		0x62
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3b740ca25000..125b2af02071 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -30,6 +30,7 @@
 #include "intel_lrc.h"
 #include "intel_lrc_reg.h"
 #include "intel_reset.h"
+#include "intel_gt_regs.h"
 #include "intel_ring.h"
 #include "uc/intel_guc_submission.h"
 
@@ -1426,6 +1427,53 @@ create_kernel_context(struct intel_engine_cs *engine)
 						  &kernel, "kernel_context");
 }
 
+static int
+setup_wa_l3flush_context(struct intel_engine_cs *engine)
+{
+	static struct lock_class_key wa_l3flush;
+	static struct intel_context *ce;
+	struct i915_ppgtt *ppgtt;
+	int ret;
+	u32 misccpctl;
+
+	misccpctl = intel_uncore_read(&engine->i915->uncore, GEN7_MISCCPCTL);
+
+	/* BIT(31) unlockbit manage by IFWI */
+	if (misccpctl & GEN12_DOP_CLOCK_GATE_LOCK) {
+		drm_warn(&engine->i915->drm, "MISCCPCTL lockbit set, update IFWI\n");
+		ret = -EPERM;
+		return ret;
+	}
+
+	ppgtt = i915_ppgtt_create(engine->gt, 0);
+	if (IS_ERR(ppgtt))
+		return PTR_ERR(ppgtt);
+
+	ce = intel_engine_create_pinned_context(engine,
+						&ppgtt->vm, SZ_4K,
+						I915_GEM_HWS_WA_L3FLUSH_ADDR,
+						&wa_l3flush, "wa_l3flush_context");
+	if (IS_ERR(ce)) {
+		/* Keep this vm isolated! */
+		i915_vm_put(&ppgtt->vm);
+		return PTR_ERR(ce);
+	}
+
+	/* Ensure this context does not get registered for use as a real context */
+	__set_bit(CONTEXT_WA_L3FLUSH, &ce->flags);
+
+	ret = intel_guc_assign_wa_guc_id(&engine->gt->uc.guc, ce);
+	if (ret < 0)
+		goto err;
+	engine->wa_l3flush_context = ce;
+	i915_vm_put(ce->vm);
+	return 0;
+
+err:
+	intel_engine_destroy_pinned_context(ce);
+	return ret;
+}
+
 /*
  * engine_init_common - initialize engine state which might require hw access
  * @engine: Engine to initialize.
@@ -1477,6 +1525,16 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	engine->kernel_context = ce;
 	engine->bind_context = bce;
 
+	/*
+	 * Create a w/a context for flushing the L3 cache
+	 * Wa_14015997824: DG2_G10 & DG2_G11
+	 */
+	if (IS_DG2_G10(engine->gt->i915) || IS_DG2_G11(engine->gt->i915)) {
+		if (setup_wa_l3flush_context(engine))
+			if (ret != -EPERM)
+				goto err_ce_context;
+	}
+
 	return 0;
 
 err_bce_context:
@@ -1555,6 +1613,8 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	if (engine->bind_context)
 		intel_engine_destroy_pinned_context(engine->bind_context);
 
+	if (engine->wa_l3flush_context)
+		intel_engine_destroy_pinned_context(engine->wa_l3flush_context);
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index ba55c059063d..2c519c56a7b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -425,6 +425,7 @@ struct intel_engine_cs {
 
 	struct intel_context *kernel_context; /* pinned */
 	struct intel_context *bind_context; /* pinned, only for BCS0 */
+	struct intel_context *wa_l3flush_context; /* Wa_14015997824: DG2_G10 & DG2_G11 */
 	/* mark the bind context's availability status */
 	bool bind_context_ready;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e42b3a5d4e63..6bad9335a561 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -707,6 +707,7 @@
 #define   GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE	(1 << 2)
 #define   GEN8_DOP_CLOCK_GATE_GUC_ENABLE	(1 << 4)
 #define   GEN8_DOP_CLOCK_GATE_MEDIA_ENABLE	(1 << 6)
+#define   GEN12_DOP_CLOCK_GATE_LOCK             REG_BIT(31) /* bits[0, 31] RO */
 
 #define GEN8_UCGCTL6				_MMIO(0x9430)
 #define   GEN8_GAPSUNIT_CLOCK_GATE_DISABLE	(1 << 24)
@@ -1010,6 +1011,7 @@
 #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
 
 #define GEN11_GLBLINVL				_MMIO(0xb404)
+#define   GEN11_L3_GLOBAL_INVALIDATE            REG_BIT(0)
 #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
 #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 7bd5d2c29056..d68fc169128d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,12 +1370,58 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 	return cs;
 }
 
+static u32 *dg2_emit_l3_flush_bb(const struct intel_context *ce, u32 *cs)
+{
+	u32 reg, inv_reg;
+
+	GEM_BUG_ON(!IS_DG2_G10(ce->engine->i915) && !IS_DG2_G11(ce->engine->i915));
+
+	reg = intel_uncore_read(ce->engine->uncore, GEN7_MISCCPCTL);
+	inv_reg = intel_uncore_read_fw(ce->engine->uncore, GEN11_GLBLINVL);
+
+	/*
+	 * L3 flush depends on clearing render/fix clocks.
+	 * Clearing of render/fix clocks depends on BIT[31]
+	 * unlock bit change from ifwi.
+	 *
+	 */
+	*cs++ = MI_LOAD_REGISTER_IMM(2) | MI_LRI_LRM_CS_MMIO;
+	*cs++ = i915_mmio_reg_offset(GEN7_MISCCPCTL);
+	*cs++ = reg & ~(GEN12_DOP_CLOCK_GATE_RENDER_ENABLE |
+			GEN8_DOP_CLOCK_GATE_CFCLK_ENABLE);
+
+	/* Flush L3 */
+	*cs++ = i915_mmio_reg_offset(GEN11_GLBLINVL);
+	*cs++ = inv_reg | GEN11_L3_GLOBAL_INVALIDATE;
+
+	/* Waiting for hw to clear */
+	*cs++ = MI_SEMAPHORE_WAIT_TOKEN |
+		MI_SEMAPHORE_REGISTER_POLL |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_EQ_SDD;
+	*cs++ = inv_reg & ~GEN11_L3_GLOBAL_INVALIDATE;
+	*cs++ = i915_mmio_reg_offset(GEN11_GLBLINVL);
+	*cs++ = 0;
+	*cs++ = 0;
+
+	/* Restore MISCCPCTL to it's original value */
+	*cs++ = i915_mmio_reg_offset(GEN7_MISCCPCTL);
+	*cs++ = reg;
+
+	return cs;
+}
+
 static u32 *
 gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
 {
 	cs = gen12_emit_timestamp_wa(ce, cs);
 	cs = gen12_emit_restore_scratch(ce, cs);
 
+	/* Wa_14015997824: DG2_G10 and DG2_G11 */
+	if ((IS_DG2_G10(ce->engine->i915) || IS_DG2_G11(ce->engine->i915)))
+		if (test_bit(CONTEXT_WA_L3FLUSH, &ce->flags))
+			cs = dg2_emit_l3_flush_bb(ce, cs);
+
 	/* Wa_16013000631:dg2 */
 	if (IS_DG2_G11(ce->engine->i915))
 		if (ce->engine->class == COMPUTE_CLASS)
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index 37ff539a6963..869c85f0d533 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -81,6 +81,13 @@
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY		0x0907
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_LEN		1u
 
+/*
+ * Global workaround keys.
+ */
+enum  {
+	GUC_WORKAROUND_KLV_ID_COPY_ENGINE_SECURITY_WA = 0x301,
+};
+
 /*
  * Global scheduling policy update keys.
  */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 57b903132776..69a44726d641 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -532,6 +532,8 @@ int intel_guc_global_policies_update(struct intel_guc *guc);
 
 void intel_guc_context_ban(struct intel_context *ce, struct i915_request *rq);
 
+int intel_guc_assign_wa_guc_id(struct intel_guc *guc, struct intel_context *ce);
+
 void intel_guc_submission_reset_prepare(struct intel_guc *guc);
 void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled);
 void intel_guc_submission_reset_finish(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 7995f059f30d..b981be11a59c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -834,10 +834,40 @@ static void guc_waklv_enable_simple(struct intel_guc *guc,
 	*remain -= size;
 }
 
+/* Wa_14015997824: DG2 */
+static void guc_waklv_init_bcs(struct intel_guc *guc, struct intel_context *dummy_ce)
+{
+	u32 offset, addr_ggtt, alloc_size, real_size;
+	u32 klv_entry[] = {
+		/* 16:16 key/length */
+		FIELD_PREP(GUC_KLV_0_KEY, GUC_WORKAROUND_KLV_ID_COPY_ENGINE_SECURITY_WA) |
+		FIELD_PREP(GUC_KLV_0_LEN, 3),
+		/* 3 dwords data */
+		dummy_ce->guc_id.id,
+		lower_32_bits(dummy_ce->lrc.lrca),
+		upper_32_bits(dummy_ce->lrc.lrca),
+	};
+
+	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));
+
+	real_size = sizeof(klv_entry);
+	alloc_size = guc_ads_waklv_size(guc);
+	GEM_BUG_ON(alloc_size < real_size);
+
+	offset = guc_ads_waklv_offset(guc);
+	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
+
+	iosys_map_memcpy_to(&guc->ads_map, offset, klv_entry, real_size);
+	ads_blob_write(guc, ads.wa_klv_addr_lo, lower_32_bits(addr_ggtt));
+	ads_blob_write(guc, ads.wa_klv_addr_hi, upper_32_bits(addr_ggtt));
+	ads_blob_write(guc, ads.wa_klv_size, real_size);
+}
+
 static void guc_waklv_init(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	u32 offset, addr_ggtt, remain, size;
+	struct intel_engine_cs *engine;
 
 	if (!intel_uc_uses_guc_submission(&gt->uc))
 		return;
@@ -849,6 +879,15 @@ static void guc_waklv_init(struct intel_guc *guc)
 	offset = guc_ads_waklv_offset(guc);
 	remain = guc_ads_waklv_size(guc);
 
+	if ((IS_DG2_G10(gt->i915) || IS_DG2_G11(gt->i915))) {
+		if (!HAS_ENGINE(gt, BCS0))
+			return;
+		engine = gt->engine[BCS0];
+		if (!engine->wa_l3flush_context)
+			return;
+		guc_waklv_init_bcs(guc, engine->wa_l3flush_context);
+	}
+
 	/* Wa_14019159160 */
 	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
 		guc_waklv_enable_simple(guc,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9400d0eb682b..bfa6a1e5f810 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2395,6 +2395,11 @@ static void unpin_guc_id(struct intel_guc *guc, struct intel_context *ce)
 	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 }
 
+int intel_guc_assign_wa_guc_id(struct intel_guc *guc, struct intel_context *ce)
+{
+	return pin_guc_id(guc, ce);
+}
+
 static int __guc_action_register_multi_lrc_v69(struct intel_guc *guc,
 					       struct intel_context *ce,
 					       u32 guc_id,
@@ -4401,9 +4406,11 @@ static inline int guc_kernel_context_pin(struct intel_guc *guc,
 	if (!test_bit(CONTEXT_GUC_INIT, &ce->flags))
 		guc_context_init(ce);
 
-	ret = try_context_registration(ce, true);
-	if (ret)
-		unpin_guc_id(guc, ce);
+	if (!intel_context_is_hidden(ce)) {
+		ret = try_context_registration(ce, true);
+		if (ret)
+			unpin_guc_id(guc, ce);
+	}
 
 	return ret;
 }
-- 
2.25.1

