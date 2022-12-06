Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C815643E28
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 09:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D277B10E2FD;
	Tue,  6 Dec 2022 08:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F8010E303
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 08:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670314384; x=1701850384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KzNpr0GuY5OIa5Q+Ra77Pn1FGhqMWj/HenhdEUyPg2Y=;
 b=ZNFNJWgJ9H7BDMNLaJW7WUcgW6QE6ujfGdxrQIieutRJE3aL1UeRVxrQ
 ZudjyPKxNSVytOapjvCH7GXG7iTi7AZ0xps0xLqfG5Nk8PbZrJDzCSHQQ
 LqllijmUHbETffmKULf5DQ89nC5Ls2BqkeAb4o1qmSJRNpECW20poSHJG
 dPAM0kweg10PRIOaST/YXSpIlSbSFcLugbzHzWJKQBlmFO3MHjav1bXUh
 j78dLXdgbv10tVPtvs2hi6B3baT/UHa6DRTMd0vJGwp1ALqc1aonyRzP3
 LBg7erwo7T//tLVD4V2qdpaLTHTS8CFPF67BFE/n2tNMJpY2KjuJHDsFf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296257753"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296257753"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:13:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="891289995"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="891289995"
Received: from aravind-dev.iind.intel.com ([10.145.162.80])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 00:12:50 -0800
From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 13:57:36 +0530
Message-Id: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Define MOCS and PAT tables
 for MTL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

On MTL due to the introduction of L4 cache, coherency and cacheability
selections are different and also GT can no longer allocate on LLC. The
MOCS/PAT tables needs an update.

BSpec: 44509, 45101, 44235

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c     | 23 +++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h     |  9 +++
 drivers/gpu/drm/i915/gt/intel_mocs.c    | 76 +++++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_mocs.c |  2 +-
 drivers/gpu/drm/i915/i915_pci.c         |  1 +
 5 files changed, 105 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e37164a60d37..428849248c34 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -467,6 +467,25 @@ void gtt_write_workarounds(struct intel_gt *gt)
 	}
 }
 
+static void mtl_setup_private_ppat(struct intel_uncore *uncore)
+{
+	intel_uncore_write(uncore, GEN12_PAT_INDEX(0),
+			   MTL_PPAT_L4_0_WB);
+	intel_uncore_write(uncore, GEN12_PAT_INDEX(1),
+			   MTL_PPAT_L4_1_WT | MTL_2_COH_1W);
+	intel_uncore_write(uncore, GEN12_PAT_INDEX(2),
+			   MTL_PPAT_L4_3_UC | MTL_2_COH_1W);
+	intel_uncore_write(uncore, GEN12_PAT_INDEX(3),
+			   MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
+	intel_uncore_write(uncore, GEN12_PAT_INDEX(4),
+			   MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
+
+	/*
+	 * Remaining PAT entries are left at the hardware-default
+	 * fully-cached setting
+	 */
+}
+
 static void tgl_setup_private_ppat(struct intel_uncore *uncore)
 {
 	/* TGL doesn't support LLC or AGE settings */
@@ -602,7 +621,9 @@ void setup_private_pat(struct intel_gt *gt)
 
 	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (IS_METEORLAKE(i915))
+		mtl_setup_private_ppat(uncore);
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		xehp_setup_private_ppat(gt);
 	else if (GRAPHICS_VER(i915) >= 12)
 		tgl_setup_private_ppat(uncore);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index d1900fec6cd1..8a3e0a6793dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -147,6 +147,15 @@ typedef u64 gen8_pte_t;
 #define GEN8_PDE_IPS_64K BIT(11)
 #define GEN8_PDE_PS_2M   BIT(7)
 
+#define MTL_PPAT_L4_CACHE_POLICY_MASK	REG_GENMASK(3, 2)
+#define MTL_PAT_INDEX_COH_MODE_MASK	REG_GENMASK(1, 0)
+#define MTL_PPAT_L4_3_UC	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
+#define MTL_PPAT_L4_1_WT	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
+#define MTL_PPAT_L4_0_WB	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
+#define MTL_3_COH_2W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
+#define MTL_2_COH_1W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
+#define MTL_0_COH_NON	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 0)
+
 enum i915_cache_level;
 
 struct drm_i915_gem_object;
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 69b489e8dfed..89570f137b2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -40,6 +40,10 @@ struct drm_i915_mocs_table {
 #define LE_COS(value)		((value) << 15)
 #define LE_SSE(value)		((value) << 17)
 
+/* Defines for the tables (GLOB_MOCS_0 - GLOB_MOCS_16) */
+#define _L4_CACHEABILITY(value)	((value) << 2)
+#define IG_PAT(value)		((value) << 8)
+
 /* Defines for the tables (LNCFMOCS0 - LNCFMOCS31) - two entries per word */
 #define L3_ESC(value)		((value) << 0)
 #define L3_SCC(value)		((value) << 1)
@@ -50,6 +54,7 @@ struct drm_i915_mocs_table {
 /* Helper defines */
 #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
 #define PVC_NUM_MOCS_ENTRIES	3
+#define MTL_NUM_MOCS_ENTRIES	16
 
 /* (e)LLC caching options */
 /*
@@ -73,6 +78,12 @@ struct drm_i915_mocs_table {
 #define L3_2_RESERVED		_L3_CACHEABILITY(2)
 #define L3_3_WB			_L3_CACHEABILITY(3)
 
+/* L4 caching options */
+#define L4_0_WB			_L4_CACHEABILITY(0)
+#define L4_1_WT			_L4_CACHEABILITY(1)
+#define L4_2_RESERVED		_L4_CACHEABILITY(2)
+#define L4_3_UC			_L4_CACHEABILITY(3)
+
 #define MOCS_ENTRY(__idx, __control_value, __l3cc_value) \
 	[__idx] = { \
 		.control_value = __control_value, \
@@ -416,6 +427,57 @@ static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
 	MOCS_ENTRY(2, 0, L3_3_WB),
 };
 
+static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
+	/* Error - Reserved for Non-Use */
+	MOCS_ENTRY(0,
+		   IG_PAT(0),
+		   L3_LKUP(1) | L3_3_WB),
+	/* Cached - L3 + L4 */
+	MOCS_ENTRY(1,
+		   IG_PAT(1),
+		   L3_LKUP(1) | L3_3_WB),
+	/* L4 - GO:L3 */
+	MOCS_ENTRY(2,
+		   IG_PAT(1),
+		   L3_LKUP(1) | L3_1_UC),
+	/* Uncached - GO:L3 */
+	MOCS_ENTRY(3,
+		   IG_PAT(1) | L4_3_UC,
+		   L3_LKUP(1) | L3_1_UC),
+	/* L4 - GO:Mem */
+	MOCS_ENTRY(4,
+		   IG_PAT(1),
+		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
+	/* Uncached - GO:Mem */
+	MOCS_ENTRY(5,
+		   IG_PAT(1) | L4_3_UC,
+		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
+	/* L4 - L3:NoLKUP; GO:L3 */
+	MOCS_ENTRY(6,
+		   IG_PAT(1),
+		   L3_1_UC),
+	/* Uncached - L3:NoLKUP; GO:L3 */
+	MOCS_ENTRY(7,
+		   IG_PAT(1) | L4_3_UC,
+		   L3_1_UC),
+	/* L4 - L3:NoLKUP; GO:Mem */
+	MOCS_ENTRY(8,
+		   IG_PAT(1),
+		   L3_GLBGO(1) | L3_1_UC),
+	/* Uncached - L3:NoLKUP; GO:Mem */
+	MOCS_ENTRY(9,
+		   IG_PAT(1) | L4_3_UC,
+		   L3_GLBGO(1) | L3_1_UC),
+	/* Display - L3; L4:WT */
+	MOCS_ENTRY(14,
+		   IG_PAT(1) | L4_1_WT,
+		   L3_LKUP(1) | L3_3_WB),
+	/* CCS - Non-Displayable */
+	MOCS_ENTRY(15,
+		   IG_PAT(1),
+		   L3_GLBGO(1) | L3_1_UC),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -445,7 +507,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_PONTEVECCHIO(i915)) {
+	if (IS_METEORLAKE(i915)) {
+		table->size = ARRAY_SIZE(mtl_mocs_table);
+		table->table = mtl_mocs_table;
+		table->n_entries = MTL_NUM_MOCS_ENTRIES;
+		table->uc_index = 9;
+		table->unused_entries_index = 1;
+	} else if (IS_PONTEVECCHIO(i915)) {
 		table->size = ARRAY_SIZE(pvc_mocs_table);
 		table->table = pvc_mocs_table;
 		table->n_entries = PVC_NUM_MOCS_ENTRIES;
@@ -646,9 +714,9 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
 		init_l3cc_table(engine->gt, &table);
 }
 
-static u32 global_mocs_offset(void)
+static u32 global_mocs_offset(struct intel_gt *gt)
 {
-	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
+	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0)) + gt->uncore->gsi_offset;
 }
 
 void intel_set_mocs_index(struct intel_gt *gt)
@@ -671,7 +739,7 @@ void intel_mocs_init(struct intel_gt *gt)
 	 */
 	flags = get_mocs_settings(gt->i915, &table);
 	if (flags & HAS_GLOBAL_MOCS)
-		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
+		__init_mocs_table(gt->uncore, &table, global_mocs_offset(gt));
 
 	/*
 	 * Initialize the L3CC table as part of mocs initalization to make
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index f27cc28608d4..66b3c6fcf1f1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
 		return 0;
 
 	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
-		addr = global_mocs_offset();
+		addr = global_mocs_offset(rq->engine->gt);
 	else
 		addr = mocs_offset(rq->engine);
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 414b4bfd514b..8e872cb89169 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
 	.has_flat_ccs = 0,
 	.has_gmd_id = 1,
 	.has_guc_deprivilege = 1,
+	.has_llc = 0,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-- 
2.25.1

