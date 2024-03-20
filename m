Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87561880AFD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 07:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DECCA10ED7F;
	Wed, 20 Mar 2024 06:05:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsYZffLi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DB810EC10
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 06:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710914718; x=1742450718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jINrDRQISz3CgmYGSOemnq8uEyH09kyPbj4w5p4gbsg=;
 b=YsYZffLiP4cDA7Ly/2+oNeW15GY94iVSLdGwie/KN8a7NRHr4uUaHBz/
 AonVG5sw0dxzORnK1coHsZkmIGzZEUpPbae3Gk04NEVpkxRev/sOyZAJn
 vSFeSBMVS6w43V3x+1c3EIGolw5JkIBkBJ8auq5LRSmnecfl9WARgPPkx
 ukdnDzZ6Ny3i3a8fUq9XddxdfzDMB4XwZYSFcgkkpjJcCkvL98FxbnehT
 XyJhnLXSTNsQ6ACM9TiV+2/eGF2e5wPJWaL18eryk2Hsn+xyuanGnEf8e
 Y52xff0l8/CSWIg7naHoJSFVZF14458kIU7lZjK84tYaqtKLHF3m7cHqT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="28295583"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="28295583"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="51485508"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 5/6] drm/i915: Drop dead code for pvc
Date: Tue, 19 Mar 2024 23:03:02 -0700
Message-ID: <20240320060543.4034215-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
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

PCI IDs for PVC were never added and platform always marked with
force_probe. Drop what's not used and rename some places as needed.

The registers not used anymore are also removed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   3 -
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  33 ----
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  30 +---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   9 --
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  19 ---
 drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   9 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  82 +---------
 .../gpu/drm/i915/gt/intel_workarounds.c.rej   |  18 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 -
 drivers/gpu/drm/i915/i915_debugfs.c           |  12 --
 drivers/gpu/drm/i915/i915_drv.h               |   9 --
 drivers/gpu/drm/i915/i915_pci.c               |  36 -----
 drivers/gpu/drm/i915/i915_reg.h               |   1 -
 drivers/gpu/drm/i915/intel_clock_gating.c     |  16 +-
 drivers/gpu/drm/i915/intel_device_info.c      |   1 -
 drivers/gpu/drm/i915/intel_device_info.h      |   1 -
 drivers/gpu/drm/i915/intel_step.c             |  70 +--------
 drivers/gpu/drm/i915/intel_uncore.c           | 142 ------------------
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 -
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   4 -
 22 files changed, 27 insertions(+), 480 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_workarounds.c.rej

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 0c5cdab278b69..1495b60744928 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -386,7 +386,7 @@ struct drm_i915_gem_object {
 	 * and kernel mode driver for caching policy control after GEN12.
 	 * In the meantime platform specific tables are created to translate
 	 * i915_cache_level into pat index, for more details check the macros
-	 * defined i915/i915_pci.c, e.g. PVC_CACHELEVEL.
+	 * defined i915/i915_pci.c, e.g. TGL_CACHELEVEL.
 	 * For backward compatibility, this field contains values exactly match
 	 * the entries of enum i915_cache_level for pre-GEN12 platforms (See
 	 * LEGACY_CACHELEVEL), so that the PTE encode functions for these
diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index f59914df6b5a7..e9f65f27b53fb 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -189,9 +189,6 @@ static bool gen12_needs_ccs_aux_inv(struct intel_engine_cs *engine)
 {
 	i915_reg_t reg = gen12_get_aux_inv_reg(engine);
 
-	if (IS_PONTEVECCHIO(engine->i915))
-		return false;
-
 	/*
 	 * So far platforms supported by i915 having flat ccs do not require
 	 * AUX invalidation. Check also whether the engine requires it.
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 75bde8c1aa5da..396f5fe993c3f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -839,38 +839,6 @@ static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
 	}
 }
 
-static void engine_mask_apply_copy_fuses(struct intel_gt *gt)
-{
-	struct drm_i915_private *i915 = gt->i915;
-	struct intel_gt_info *info = &gt->info;
-	unsigned long meml3_mask;
-	unsigned long quad;
-
-	if (!(GRAPHICS_VER_FULL(i915) >= IP_VER(12, 60) &&
-	      GRAPHICS_VER_FULL(i915) < IP_VER(12, 70)))
-		return;
-
-	meml3_mask = intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3);
-	meml3_mask = REG_FIELD_GET(GEN12_MEML3_EN_MASK, meml3_mask);
-
-	/*
-	 * Link Copy engines may be fused off according to meml3_mask. Each
-	 * bit is a quad that houses 2 Link Copy and two Sub Copy engines.
-	 */
-	for_each_clear_bit(quad, &meml3_mask, GEN12_MAX_MSLICES) {
-		unsigned int instance = quad * 2 + 1;
-		intel_engine_mask_t mask = GENMASK(_BCS(instance + 1),
-						   _BCS(instance));
-
-		if (mask & info->engine_mask) {
-			gt_dbg(gt, "bcs%u fused off\n", instance);
-			gt_dbg(gt, "bcs%u fused off\n", instance + 1);
-
-			info->engine_mask &= ~mask;
-		}
-	}
-}
-
 /*
  * Determine which engines are fused off in our particular hardware.
  * Note that we have a catch-22 situation where we need to be able to access
@@ -889,7 +857,6 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 
 	engine_mask_apply_media_fuses(gt);
 	engine_mask_apply_compute_fuses(gt);
-	engine_mask_apply_copy_fuses(gt);
 
 	/*
 	 * The only use of the GSC CS is to load and communicate with the GSC
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 29443bf7c06c9..b8912bd6c08ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -69,27 +69,6 @@ static const struct intel_mmio_range dg2_lncf_steering_table[] = {
 	{},
 };
 
-/*
- * We have several types of MCR registers on PVC where steering to (0,0)
- * will always provide us with a non-terminated value.  We'll stick them
- * all in the same table for simplicity.
- */
-static const struct intel_mmio_range pvc_instance0_steering_table[] = {
-	{ 0x004000, 0x004AFF },		/* HALF-BSLICE */
-	{ 0x008800, 0x00887F },		/* CC */
-	{ 0x008A80, 0x008AFF },		/* TILEPSMI */
-	{ 0x00B000, 0x00B0FF },		/* HALF-BSLICE */
-	{ 0x00B100, 0x00B3FF },		/* L3BANK */
-	{ 0x00C800, 0x00CFFF },		/* HALF-BSLICE */
-	{ 0x00D800, 0x00D8FF },		/* HALF-BSLICE */
-	{ 0x00DD00, 0x00DDFF },		/* BSLICE */
-	{ 0x00E900, 0x00E9FF },		/* HALF-BSLICE */
-	{ 0x00EC00, 0x00EEFF },		/* HALF-BSLICE */
-	{ 0x00F000, 0x00FFFF },		/* HALF-BSLICE */
-	{ 0x024180, 0x0241FF },		/* HALF-BSLICE */
-	{},
-};
-
 static const struct intel_mmio_range xelpg_instance0_steering_table[] = {
 	{ 0x000B00, 0x000BFF },         /* SQIDI */
 	{ 0x001000, 0x001FFF },         /* SQIDI */
@@ -173,8 +152,6 @@ void intel_gt_mcr_init(struct intel_gt *gt)
 		gt->steering_table[INSTANCE0] = xelpg_instance0_steering_table;
 		gt->steering_table[L3BANK] = xelpg_l3bank_steering_table;
 		gt->steering_table[DSS] = xelpg_dss_steering_table;
-	} else if (IS_PONTEVECCHIO(i915)) {
-		gt->steering_table[INSTANCE0] = pvc_instance0_steering_table;
 	} else if (IS_DG2(i915)) {
 		gt->steering_table[MSLICE] = dg2_mslice_steering_table;
 		gt->steering_table[LNCF] = dg2_lncf_steering_table;
@@ -805,8 +782,6 @@ void intel_gt_mcr_report_steering(struct drm_printer *p, struct intel_gt *gt,
 		for (int i = 0; i < NUM_STEERING_TYPES; i++)
 			if (gt->steering_table[i])
 				report_steering_type(p, gt, i, dump_table);
-	} else if (IS_PONTEVECCHIO(gt->i915)) {
-		report_steering_type(p, gt, INSTANCE0, dump_table);
 	} else if (HAS_MSLICE_STEERING(gt->i915)) {
 		report_steering_type(p, gt, MSLICE, dump_table);
 		report_steering_type(p, gt, LNCF, dump_table);
@@ -826,10 +801,7 @@ void intel_gt_mcr_report_steering(struct drm_printer *p, struct intel_gt *gt,
 void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
 				   unsigned int *group, unsigned int *instance)
 {
-	if (IS_PONTEVECCHIO(gt->i915)) {
-		*group = dss / GEN_DSS_PER_CSLICE;
-		*instance = dss % GEN_DSS_PER_CSLICE;
-	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 55)) {
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 55)) {
 		*group = dss / GEN_DSS_PER_GSLICE;
 		*instance = dss % GEN_DSS_PER_GSLICE;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 919c079037677..8d8d781b44b6b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -953,10 +953,6 @@
 #define   GEN7_WA_FOR_GEN7_L3_CONTROL		0x3C47FF8C
 #define   GEN7_L3AGDIS				(1 << 19)
 
-#define XEHPC_LNCFMISCCFGREG0			MCR_REG(0xb01c)
-#define   XEHPC_HOSTCACHEEN			REG_BIT(1)
-#define   XEHPC_OVRLSCCC			REG_BIT(0)
-
 #define GEN7_L3CNTLREG2				_MMIO(0xb020)
 
 /* MOCS (Memory Object Control State) registers */
@@ -1013,11 +1009,6 @@
 #define XEHP_L3SCQREG7				MCR_REG(0xb188)
 #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
 
-#define XEHPC_L3SCRUB				MCR_REG(0xb18c)
-#define   SCRUB_CL_DWNGRADE_SHARED		REG_BIT(12)
-#define   SCRUB_RATE_PER_BANK_MASK		REG_GENMASK(2, 0)
-#define   SCRUB_RATE_4B_PER_CLK			REG_FIELD_PREP(SCRUB_RATE_PER_BANK_MASK, 0x6)
-
 #define GEN11_GLBLINVL				_MMIO(0xb404)
 #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
 #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 9fac5e2318e2b..d791d63d49b49 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -53,7 +53,6 @@ struct drm_i915_mocs_table {
 
 /* Helper defines */
 #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
-#define PVC_NUM_MOCS_ENTRIES	3
 #define MTL_NUM_MOCS_ENTRIES	16
 
 /* (e)LLC caching options */
@@ -379,17 +378,6 @@ static const struct drm_i915_mocs_entry dg2_mocs_table[] = {
 	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
 };
 
-static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
-	/* Error */
-	MOCS_ENTRY(0, 0, L3_3_WB),
-
-	/* UC */
-	MOCS_ENTRY(1, 0, L3_1_UC),
-
-	/* WB */
-	MOCS_ENTRY(2, 0, L3_3_WB),
-};
-
 static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
 	/* Error - Reserved for Non-Use */
 	MOCS_ENTRY(0,
@@ -476,13 +464,6 @@ static unsigned int get_mocs_settings(struct drm_i915_private *i915,
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
 		table->uc_index = 9;
 		table->unused_entries_index = 1;
-	} else if (IS_PONTEVECCHIO(i915)) {
-		table->size = ARRAY_SIZE(pvc_mocs_table);
-		table->table = pvc_mocs_table;
-		table->n_entries = PVC_NUM_MOCS_ENTRIES;
-		table->uc_index = 1;
-		table->wb_index = 2;
-		table->unused_entries_index = 2;
 	} else if (IS_DG2(i915)) {
 		table->size = ARRAY_SIZE(dg2_mocs_table);
 		table->table = dg2_mocs_table;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 1788db4376e50..c9cb2a3919423 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1090,9 +1090,7 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 
-	if (IS_PONTEVECCHIO(i915))
-		return intel_uncore_read(uncore, PVC_RP_STATE_CAP);
-	else if (IS_GEN9_LP(i915))
+	if (IS_GEN9_LP(i915))
 		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
 	else
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 5eec9cd6199f4..c8fadf58d8361 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -214,13 +214,8 @@ static void xehp_sseu_info_init(struct intel_gt *gt)
 	int num_compute_regs, num_geometry_regs;
 	int eu;
 
-	if (IS_PONTEVECCHIO(gt->i915)) {
-		num_geometry_regs = 0;
-		num_compute_regs = 2;
-	} else {
-		num_geometry_regs = 1;
-		num_compute_regs = 1;
-	}
+	num_geometry_regs = 1;
+	num_compute_regs = 1;
 
 	/*
 	 * The concept of slice has been removed in Xe_HP.  To be compatible
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index ba502c0be9b10..8a1adc8aadddf 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -257,12 +257,6 @@ wa_write(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 	wa_write_clr_set(wal, reg, ~0, set);
 }
 
-static void
-wa_mcr_write(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 set)
-{
-	wa_mcr_write_clr_set(wal, reg, ~0, set);
-}
-
 static void
 wa_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 set)
 {
@@ -918,8 +912,6 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 
 	if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_ctx_workarounds_init(engine, wal);
-	else if (IS_PONTEVECCHIO(i915))
-		; /* noop; none at this time */
 	else if (IS_DG2(i915))
 		dg2_ctx_workarounds_init(engine, wal);
 	else if (IS_DG1(i915))
@@ -1374,20 +1366,6 @@ xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 		__set_mcr_steering(wal, GAM_MCR_SELECTOR, 1, 0);
 }
 
-static void
-pvc_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
-{
-	unsigned int dss;
-
-	/*
-	 * Setup implicit steering for COMPUTE and DSS ranges to the first
-	 * non-fused-off DSS.  All other types of MCR registers will be
-	 * explicitly steered.
-	 */
-	dss = intel_sseu_find_first_xehp_dss(&gt->info.sseu, 0, 0);
-	__add_mcr_wa(gt, wal, dss / GEN_DSS_PER_CSLICE, dss % GEN_DSS_PER_CSLICE);
-}
-
 static void
 icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1556,24 +1534,6 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 }
 
-static void
-pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
-{
-	pvc_init_mcr(gt, wal);
-
-	/* Wa_14015795083 */
-	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
-
-	/* Wa_18018781329 */
-	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
-	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
-	wa_mcr_write_or(wal, XEHP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
-	wa_mcr_write_or(wal, XEHP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
-
-	/* Wa_16016694945 */
-	wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
-}
-
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1650,12 +1610,6 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
 
-	if (IS_PONTEVECCHIO(gt->i915)) {
-		wa_mcr_write(wal, XEHPC_L3SCRUB,
-			     SCRUB_CL_DWNGRADE_SHARED | SCRUB_RATE_4B_PER_CLK);
-		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
-	}
-
 	if (IS_DG2(gt->i915)) {
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
@@ -1680,8 +1634,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_gt_workarounds_init(gt, wal);
-	else if (IS_PONTEVECCHIO(i915))
-		pvc_gt_workarounds_init(gt, wal);
 	else if (IS_DG2(i915))
 		dg2_gt_workarounds_init(gt, wal);
 	else if (IS_DG1(i915))
@@ -2101,30 +2053,6 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
 	}
 }
 
-static void blacklist_trtt(struct intel_engine_cs *engine)
-{
-	struct i915_wa_list *w = &engine->whitelist;
-
-	/*
-	 * Prevent read/write access to [0x4400, 0x4600) which covers
-	 * the TRTT range across all engines. Note that normally userspace
-	 * cannot access the other engines' trtt control, but for simplicity
-	 * we cover the entire range on each engine.
-	 */
-	whitelist_reg_ext(w, _MMIO(0x4400),
-			  RING_FORCE_TO_NONPRIV_DENY |
-			  RING_FORCE_TO_NONPRIV_RANGE_64);
-	whitelist_reg_ext(w, _MMIO(0x4500),
-			  RING_FORCE_TO_NONPRIV_DENY |
-			  RING_FORCE_TO_NONPRIV_RANGE_64);
-}
-
-static void pvc_whitelist_build(struct intel_engine_cs *engine)
-{
-	/* Wa_16014440446:pvc */
-	blacklist_trtt(engine);
-}
-
 static void xelpg_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
@@ -2151,8 +2079,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		; /* none yet */
 	else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 74)))
 		xelpg_whitelist_build(engine);
-	else if (IS_PONTEVECCHIO(i915))
-		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
 		dg2_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 12)
@@ -2735,10 +2661,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 static void
 ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
-	if (IS_PVC_CT_STEP(engine->i915, STEP_A0, STEP_C0)) {
-		/* Wa_14014999345:pvc */
-		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS, DISABLE_ECC);
-	}
+	/* boilerplate for any CCS engine workaround */
 }
 
 /*
@@ -2844,13 +2767,12 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
-	    IS_PONTEVECCHIO(i915) ||
 	    IS_DG2(i915)) {
 		/* Wa_22014226127 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 
-	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915))
+	if (IS_DG2(i915))
 		/* Wa_14015227452:dg2,pvc */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c.rej b/drivers/gpu/drm/i915/gt/intel_workarounds.c.rej
new file mode 100644
index 0000000000000..91463b1d684ad
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c.rej
@@ -0,0 +1,18 @@
+diff a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c	(rejected hunks)
+@@ -2844,14 +2767,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
+ 
+ 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
+ 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
+-	    IS_PONTEVECCHIO(i915) ||
+ 	    IS_DG2(i915)) {
+ 		/* Wa_22014226127 */
+ 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
+ 	}
+ 
+-	if (IS_PONTEVECCHIO(i915) || IS_DG2(i915))
+-		/* Wa_14015227452:dg2,pvc */
++	if (IS_DG2(i915))
++		/* Wa_14015227452 */
+ 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+ 
+ 	if (IS_DG2(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 28277321d9ca9..b47051ddf17f2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -50,10 +50,6 @@ static void uc_expand_default_options(struct intel_uc *uc)
 
 	/* Default: enable HuC authentication and GuC submission */
 	i915->params.enable_guc = ENABLE_GUC_LOAD_HUC | ENABLE_GUC_SUBMISSION;
-
-	/* PVC does not use HuC */
-	if (IS_PONTEVECCHIO(i915))
-		i915->params.enable_guc &= ~ENABLE_GUC_LOAD_HUC;
 }
 
 /* Reset GuC providing us with fresh state for both GuC and HuC.
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 990eaa029d9c2..24c78873b3cf5 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -156,18 +156,6 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
 		case 4: return " WB (2-Way Coh)";
 		default: return " not defined";
 		}
-	} else if (IS_PONTEVECCHIO(i915)) {
-		switch (obj->pat_index) {
-		case 0: return " UC";
-		case 1: return " WC";
-		case 2: return " WT";
-		case 3: return " WB";
-		case 4: return " WT (CLOS1)";
-		case 5: return " WB (CLOS1)";
-		case 6: return " WT (CLOS2)";
-		case 7: return " WT (CLOS2)";
-		default: return " not defined";
-		}
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		switch (obj->pat_index) {
 		case 0: return " WB";
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dff056587459f..cf52d4adaa204 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -545,7 +545,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_S(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
-#define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
 #define IS_LUNARLAKE(i915) 0
 
@@ -620,14 +619,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_TIGERLAKE_UY(i915) \
 	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
-#define IS_PVC_BD_STEP(__i915, since, until) \
-	(IS_PONTEVECCHIO(__i915) && \
-	 IS_BASEDIE_STEP(__i915, since, until))
-
-#define IS_PVC_CT_STEP(__i915, since, until) \
-	(IS_PONTEVECCHIO(__i915) && \
-	 IS_GRAPHICS_STEP(__i915, since, until))
-
 #define IS_LP(i915)		(INTEL_INFO(i915)->is_lp)
 #define IS_GEN9_LP(i915)	(GRAPHICS_VER(i915) == 9 && IS_LP(i915))
 #define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_LP(i915))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8b673fdcf178f..1e69783ae4fd9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -59,14 +59,6 @@
 		[I915_CACHE_WT]     = 2, \
 	}
 
-#define PVC_CACHELEVEL \
-	.cachelevel_to_pat = { \
-		[I915_CACHE_NONE]   = 0, \
-		[I915_CACHE_LLC]    = 3, \
-		[I915_CACHE_L3_LLC] = 3, \
-		[I915_CACHE_WT]     = 2, \
-	}
-
 #define MTL_CACHELEVEL \
 	.cachelevel_to_pat = { \
 		[I915_CACHE_NONE]   = 2, \
@@ -756,34 +748,6 @@ static const struct intel_device_info ats_m_info = {
 	.tuning_thread_rr_after_dep = 1,
 };
 
-#define XE_HPC_FEATURES \
-	XE_HP_FEATURES, \
-	.dma_mask_size = 52, \
-	.has_3d_pipeline = 0, \
-	.has_guc_deprivilege = 1, \
-	.has_l3_ccs_read = 1, \
-	.has_mslice_steering = 0, \
-	.has_one_eu_per_fuse_bit = 1
-
-__maybe_unused
-static const struct intel_device_info pvc_info = {
-	XE_HPC_FEATURES,
-	DGFX_FEATURES,
-	.__runtime.graphics.ip.ver = 12,
-	.__runtime.graphics.ip.rel = 60,
-	.__runtime.media.ip.ver = 12,
-	.__runtime.media.ip.rel = 60,
-	PLATFORM(INTEL_PONTEVECCHIO),
-	.has_flat_ccs = 0,
-	.max_pat_index = 7,
-	.platform_engine_mask =
-		BIT(BCS0) |
-		BIT(VCS0) |
-		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
-	.require_force_probe = 1,
-	PVC_CACHELEVEL,
-};
-
 static const struct intel_gt_definition xelpmp_extra_gt[] = {
 	{
 		.type = GT_MEDIA,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7a84eb31818cc..c18e7dbb025e7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1750,7 +1750,6 @@
 
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
-#define PVC_RP_STATE_CAP	_MMIO(0x281014)
 
 #define MTL_RP_STATE_CAP	_MMIO(0x138000)
 #define MTL_MEDIAP_STATE_CAP	_MMIO(0x138020)
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index e34e1aabe6f86..7e70ee4fbd84d 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -350,17 +350,6 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 			 SGSI_SIDECLK_DIS);
 }
 
-static void pvc_init_clock_gating(struct drm_i915_private *i915)
-{
-	/* Wa_14012385139:pvc */
-	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
-
-	/* Wa_22010954014:pvc */
-	if (IS_PVC_BD_STEP(i915, STEP_A0, STEP_B0))
-		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
-}
-
 static void cnp_init_clock_gating(struct drm_i915_private *i915)
 {
 	if (!HAS_PCH_CNP(i915))
@@ -722,7 +711,6 @@ static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs =
 	.init_clock_gating = platform##_init_clock_gating,		\
 }
 
-CG_FUNCS(pvc);
 CG_FUNCS(dg2);
 CG_FUNCS(cfl);
 CG_FUNCS(skl);
@@ -756,9 +744,7 @@ CG_FUNCS(nop);
  */
 void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
 {
-	if (IS_PONTEVECCHIO(i915))
-		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
-	else if (IS_DG2(i915))
+	if (IS_DG2(i915))
 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		i915->clock_gating_funcs = &cfl_clock_gating_funcs;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index de28cbe758f7e..a0a43ea07f118 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -71,7 +71,6 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(ALDERLAKE_S),
 	PLATFORM_NAME(ALDERLAKE_P),
 	PLATFORM_NAME(DG2),
-	PLATFORM_NAME(PONTEVECCHIO),
 	PLATFORM_NAME(METEORLAKE),
 };
 #undef PLATFORM_NAME
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 2299327e59f0a..d1a2abc7e5139 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -88,7 +88,6 @@ enum intel_platform {
 	INTEL_ALDERLAKE_S,
 	INTEL_ALDERLAKE_P,
 	INTEL_DG2,
-	INTEL_PONTEVECCHIO,
 	INTEL_METEORLAKE,
 	INTEL_MAX_PLATFORMS
 };
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index d524bfe17c270..a5adfb5d8fd2a 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -146,8 +146,6 @@ static u8 gmd_to_intel_step(struct drm_i915_private *i915,
 	return step;
 }
 
-static void pvc_step_init(struct drm_i915_private *i915, int pci_revid);
-
 void intel_step_init(struct drm_i915_private *i915)
 {
 	const struct intel_step_info *revids = NULL;
@@ -171,10 +169,7 @@ void intel_step_init(struct drm_i915_private *i915)
 		return;
 	}
 
-	if (IS_PONTEVECCHIO(i915)) {
-		pvc_step_init(i915, revid);
-		return;
-	} else if (IS_DG2_G10(i915)) {
+	if (IS_DG2_G10(i915)) {
 		revids = dg2_g10_revid_step_tbl;
 		size = ARRAY_SIZE(dg2_g10_revid_step_tbl);
 	} else if (IS_DG2_G11(i915)) {
@@ -267,69 +262,6 @@ void intel_step_init(struct drm_i915_private *i915)
 	RUNTIME_INFO(i915)->step = step;
 }
 
-#define PVC_BD_REVID	GENMASK(5, 3)
-#define PVC_CT_REVID	GENMASK(2, 0)
-
-static const int pvc_bd_subids[] = {
-	[0x0] = STEP_A0,
-	[0x3] = STEP_B0,
-	[0x4] = STEP_B1,
-	[0x5] = STEP_B3,
-};
-
-static const int pvc_ct_subids[] = {
-	[0x3] = STEP_A0,
-	[0x5] = STEP_B0,
-	[0x6] = STEP_B1,
-	[0x7] = STEP_C0,
-};
-
-static int
-pvc_step_lookup(struct drm_i915_private *i915, const char *type,
-		const int *table, int size, int subid)
-{
-	if (subid < size && table[subid] != STEP_NONE)
-		return table[subid];
-
-	drm_warn(&i915->drm, "Unknown %s id 0x%02x\n", type, subid);
-
-	/*
-	 * As on other platforms, try to use the next higher ID if we land on a
-	 * gap in the table.
-	 */
-	while (subid < size && table[subid] == STEP_NONE)
-		subid++;
-
-	if (subid < size) {
-		drm_dbg(&i915->drm, "Using steppings for %s id 0x%02x\n",
-			type, subid);
-		return table[subid];
-	}
-
-	drm_dbg(&i915->drm, "Using future steppings\n");
-	return STEP_FUTURE;
-}
-
-/*
- * PVC needs special handling since we don't lookup the
- * revid in a table, but rather specific bitfields within
- * the revid for various components.
- */
-static void pvc_step_init(struct drm_i915_private *i915, int pci_revid)
-{
-	int ct_subid, bd_subid;
-
-	bd_subid = FIELD_GET(PVC_BD_REVID, pci_revid);
-	ct_subid = FIELD_GET(PVC_CT_REVID, pci_revid);
-
-	RUNTIME_INFO(i915)->step.basedie_step =
-		pvc_step_lookup(i915, "Base Die", pvc_bd_subids,
-				ARRAY_SIZE(pvc_bd_subids), bd_subid);
-	RUNTIME_INFO(i915)->step.graphics_step =
-		pvc_step_lookup(i915, "Compute Tile", pvc_ct_subids,
-				ARRAY_SIZE(pvc_ct_subids), ct_subid);
-}
-
 #define STEP_NAME_CASE(name)	\
 	case STEP_##name:	\
 		return #name;
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 4d2b15dbe9acd..729409a4bada8 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1106,45 +1106,6 @@ static const struct i915_range dg2_shadowed_regs[] = {
 	{ .start = 0x1F8510, .end = 0x1F8550 },
 };
 
-static const struct i915_range pvc_shadowed_regs[] = {
-	{ .start =   0x2030, .end =   0x2030 },
-	{ .start =   0x2510, .end =   0x2550 },
-	{ .start =   0xA008, .end =   0xA00C },
-	{ .start =   0xA188, .end =   0xA188 },
-	{ .start =   0xA278, .end =   0xA278 },
-	{ .start =   0xA540, .end =   0xA56C },
-	{ .start =   0xC4C8, .end =   0xC4C8 },
-	{ .start =   0xC4E0, .end =   0xC4E0 },
-	{ .start =   0xC600, .end =   0xC600 },
-	{ .start =   0xC658, .end =   0xC658 },
-	{ .start =  0x22030, .end =  0x22030 },
-	{ .start =  0x22510, .end =  0x22550 },
-	{ .start = 0x1C0030, .end = 0x1C0030 },
-	{ .start = 0x1C0510, .end = 0x1C0550 },
-	{ .start = 0x1C4030, .end = 0x1C4030 },
-	{ .start = 0x1C4510, .end = 0x1C4550 },
-	{ .start = 0x1C8030, .end = 0x1C8030 },
-	{ .start = 0x1C8510, .end = 0x1C8550 },
-	{ .start = 0x1D0030, .end = 0x1D0030 },
-	{ .start = 0x1D0510, .end = 0x1D0550 },
-	{ .start = 0x1D4030, .end = 0x1D4030 },
-	{ .start = 0x1D4510, .end = 0x1D4550 },
-	{ .start = 0x1D8030, .end = 0x1D8030 },
-	{ .start = 0x1D8510, .end = 0x1D8550 },
-	{ .start = 0x1E0030, .end = 0x1E0030 },
-	{ .start = 0x1E0510, .end = 0x1E0550 },
-	{ .start = 0x1E4030, .end = 0x1E4030 },
-	{ .start = 0x1E4510, .end = 0x1E4550 },
-	{ .start = 0x1E8030, .end = 0x1E8030 },
-	{ .start = 0x1E8510, .end = 0x1E8550 },
-	{ .start = 0x1F0030, .end = 0x1F0030 },
-	{ .start = 0x1F0510, .end = 0x1F0550 },
-	{ .start = 0x1F4030, .end = 0x1F4030 },
-	{ .start = 0x1F4510, .end = 0x1F4550 },
-	{ .start = 0x1F8030, .end = 0x1F8030 },
-	{ .start = 0x1F8510, .end = 0x1F8550 },
-};
-
 static const struct i915_range mtl_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
 	{ .start =   0x2510, .end =   0x2550 },
@@ -1619,105 +1580,6 @@ static const struct intel_forcewake_range __dg2_fw_ranges[] = {
 	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
 };
 
-static const struct intel_forcewake_range __pvc_fw_ranges[] = {
-	GEN_FW_RANGE(0x0, 0xaff, 0),
-	GEN_FW_RANGE(0xb00, 0xbff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0xc00, 0xfff, 0),
-	GEN_FW_RANGE(0x1000, 0x1fff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x4000, 0x813f, FORCEWAKE_GT), /*
-		0x4000 - 0x4aff: gt
-		0x4b00 - 0x4fff: reserved
-		0x5000 - 0x51ff: gt
-		0x5200 - 0x52ff: reserved
-		0x5300 - 0x53ff: gt
-		0x5400 - 0x7fff: reserved
-		0x8000 - 0x813f: gt */
-	GEN_FW_RANGE(0x8140, 0x817f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x8180, 0x81ff, 0),
-	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
-		0x8200 - 0x82ff: gt
-		0x8300 - 0x84ff: reserved
-		0x8500 - 0x887f: gt
-		0x8880 - 0x8a7f: reserved
-		0x8a80 - 0x8aff: gt
-		0x8b00 - 0x8fff: reserved
-		0x9000 - 0x947f: gt
-		0x9480 - 0x94cf: reserved */
-	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
-		0x9560 - 0x95ff: always on
-		0x9600 - 0x967f: reserved */
-	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
-		0x9680 - 0x96ff: render
-		0x9700 - 0x97ff: reserved */
-	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
-		0x9800 - 0xb4ff: gt
-		0xb500 - 0xbfff: reserved
-		0xc000 - 0xcfff: gt */
-	GEN_FW_RANGE(0xd000, 0xd3ff, 0),
-	GEN_FW_RANGE(0xd400, 0xdbff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
-	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
-		0xdd00 - 0xddff: gt
-		0xde00 - 0xde7f: reserved */
-	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
-		0xde80 - 0xdeff: render
-		0xdf00 - 0xe1ff: reserved
-		0xe200 - 0xe7ff: render
-		0xe800 - 0xe8ff: reserved */
-	GEN_FW_RANGE(0xe900, 0x11fff, FORCEWAKE_GT), /*
-		 0xe900 -  0xe9ff: gt
-		 0xea00 -  0xebff: reserved
-		 0xec00 -  0xffff: gt
-		0x10000 - 0x11fff: reserved */
-	GEN_FW_RANGE(0x12000, 0x12fff, 0), /*
-		0x12000 - 0x127ff: always on
-		0x12800 - 0x12fff: reserved */
-	GEN_FW_RANGE(0x13000, 0x19fff, FORCEWAKE_GT), /*
-		0x13000 - 0x135ff: gt
-		0x13600 - 0x147ff: reserved
-		0x14800 - 0x153ff: gt
-		0x15400 - 0x19fff: reserved */
-	GEN_FW_RANGE(0x1a000, 0x21fff, FORCEWAKE_RENDER), /*
-		0x1a000 - 0x1ffff: render
-		0x20000 - 0x21fff: reserved */
-	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
-		24000 - 0x2407f: always on
-		24080 - 0x2417f: reserved */
-	GEN_FW_RANGE(0x24180, 0x25fff, FORCEWAKE_GT), /*
-		0x24180 - 0x241ff: gt
-		0x24200 - 0x251ff: reserved
-		0x25200 - 0x252ff: gt
-		0x25300 - 0x25fff: reserved */
-	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
-		0x26000 - 0x27fff: render
-		0x28000 - 0x2ffff: reserved */
-	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),
-	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
-	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
-		0x1c0000 - 0x1c2bff: VD0
-		0x1c2c00 - 0x1c2cff: reserved
-		0x1c2d00 - 0x1c2dff: VD0
-		0x1c2e00 - 0x1c3eff: reserved
-		0x1c3f00 - 0x1c3fff: VD0 */
-	GEN_FW_RANGE(0x1c4000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX1), /*
-		0x1c4000 - 0x1c6aff: VD1
-		0x1c6b00 - 0x1c7eff: reserved
-		0x1c7f00 - 0x1c7fff: VD1
-		0x1c8000 - 0x1cffff: reserved */
-	GEN_FW_RANGE(0x1d0000, 0x23ffff, FORCEWAKE_MEDIA_VDBOX2), /*
-		0x1d0000 - 0x1d2aff: VD2
-		0x1d2b00 - 0x1d3eff: reserved
-		0x1d3f00 - 0x1d3fff: VD2
-		0x1d4000 - 0x23ffff: reserved */
-	GEN_FW_RANGE(0x240000, 0x3dffff, 0),
-	GEN_FW_RANGE(0x3e0000, 0x3effff, FORCEWAKE_GT),
-};
-
 static const struct intel_forcewake_range __mtl_fw_ranges[] = {
 	GEN_FW_RANGE(0x0, 0xaff, 0),
 	GEN_FW_RANGE(0xb00, 0xbff, FORCEWAKE_GT),
@@ -2560,10 +2422,6 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __mtl_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, mtl_shadowed_regs);
 		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
-	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 60)) {
-		ASSIGN_FW_DOMAINS_TABLE(uncore, __pvc_fw_ranges);
-		ASSIGN_SHADOW_TABLE(uncore, pvc_shadowed_regs);
-		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
 	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
 		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
 		ASSIGN_SHADOW_TABLE(uncore, dg2_shadowed_regs);
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 502bcadc5f396..41eaa9b7f67d0 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -71,7 +71,6 @@ static int intel_shadow_table_check(void)
 		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs) },
 		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
 		{ dg2_shadowed_regs, ARRAY_SIZE(dg2_shadowed_regs) },
-		{ pvc_shadowed_regs, ARRAY_SIZE(pvc_shadowed_regs) },
 		{ mtl_shadowed_regs, ARRAY_SIZE(mtl_shadowed_regs) },
 		{ xelpmp_shadowed_regs, ARRAY_SIZE(xelpmp_shadowed_regs) },
 	};
@@ -119,7 +118,6 @@ int intel_uncore_mock_selftests(void)
 		{ __gen9_fw_ranges, ARRAY_SIZE(__gen9_fw_ranges), true },
 		{ __gen11_fw_ranges, ARRAY_SIZE(__gen11_fw_ranges), true },
 		{ __gen12_fw_ranges, ARRAY_SIZE(__gen12_fw_ranges), true },
-		{ __pvc_fw_ranges, ARRAY_SIZE(__pvc_fw_ranges), true },
 		{ __mtl_fw_ranges, ARRAY_SIZE(__mtl_fw_ranges), true },
 		{ __xelpmp_fw_ranges, ARRAY_SIZE(__xelpmp_fw_ranges), true },
 	};
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index a7e7ec3b5db92..a01d1b869c2df 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -86,7 +86,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
 #define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_P)
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
-#define IS_PONTEVECCHIO(dev_priv) IS_PLATFORM(dev_priv, XE_PVC)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
 
@@ -130,9 +129,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 	((xe)->info.subplatform == XE_SUBPLATFORM_DG2_ ## variant && \
 	 IS_GRAPHICS_STEP(xe, first, last))
 
-/* XXX: No basedie stepping support yet */
-#define IS_PVC_BD_STEP(xe, first, last) (!WARN_ON(1) && IS_PONTEVECCHIO(xe))
-
 #define IS_TIGERLAKE_DISPLAY_STEP(xe, first, last) (IS_TIGERLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
 #define IS_ROCKETLAKE_DISPLAY_STEP(xe, first, last) (IS_ROCKETLAKE(xe) && IS_DISPLAY_STEP(xe, first, last))
 #define IS_DG1_DISPLAY_STEP(xe, first, last) (IS_DG1(xe) && IS_DISPLAY_STEP(xe, first, last))
-- 
2.43.0

