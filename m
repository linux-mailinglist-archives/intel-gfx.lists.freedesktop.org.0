Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECDD6EB194
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 20:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A354810EEB2;
	Fri, 21 Apr 2023 18:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 747CE10E333;
 Fri, 21 Apr 2023 18:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682101571; x=1713637571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=82vcFMgbq4Gio/TTqWF1zzvGO+BBTztX/HSeIUwMtpQ=;
 b=D+FpD+77UEAqfFSlGPxWfBOPsygdps5ij9hRwF20SI8ZdB7G4EKx1I39
 J0oLY0TUDCPoDtAQGtREYnBxPk9hL6fxBOOR3zk1QdOH8cDRj0OZrimLa
 7kTaSB2Xch34ySO5RP+BBw/2a0gPHvzH+ZEm8V7R+/jplnjAU2QlwAVYY
 RZORc9BDK4lV293u3T+EIyeXgr/SoZAGpXou7McAZU0x6FiXvUr/p3NyX
 XhHl8p/8PuKBM+NeFslTt/Fea62w2UmoA8GSyuPvjBI9dbV0cfH52iShc
 OHqXXyBxFuiWUZGSDPHhskVx4ujDa9VOviEFjhjg5hBcyTl9t/UCQp2vg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="347959462"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="347959462"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 11:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="781683396"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="781683396"
Received: from ameghere-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 11:26:04 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>, Fei Yang <fei.yang@intel.com>
Date: Fri, 21 Apr 2023 20:25:34 +0200
Message-Id: <20230421182535.292670-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230421182535.292670-1-andi.shyti@linux.intel.com>
References: <20230421182535.292670-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Define MOCS and PAT tables
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Lucas Martins De Marchi <lucas.demarchi@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>, Matt Roper <matthew.d.roper@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

On MTL, GT can no longer allocate on LLC - only the CPU can.
This, along with programming new register bits that MTL
requires calls for a MOCS/PAT table update.
Also the PAT index registers are multicasted for primary GT,
and there is an address jump from index 7 to 8. This patch
makes sure that these registers are programmed in the proper
way.

BSpec: 44509, 45101, 44235

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  6 ++-
 drivers/gpu/drm/i915/gt/intel_gtt.c     | 47 ++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h     |  8 +++
 drivers/gpu/drm/i915/gt/intel_mocs.c    | 70 ++++++++++++++++++++++++-
 4 files changed, 128 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index fd1f9cd35e9d7..e8c3b762a92a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -356,7 +356,11 @@
 #define GEN7_TLB_RD_ADDR			_MMIO(0x4700)
 
 #define GEN12_PAT_INDEX(index)			_MMIO(0x4800 + (index) * 4)
-#define XEHP_PAT_INDEX(index)			MCR_REG(0x4800 + (index) * 4)
+#define _PAT_INDEX(index)			_PICK_EVEN_2RANGES(index, 8, \
+								   0x4800, 0x4804, \
+								   0x4848, 0x484c)
+#define XEHP_PAT_INDEX(index)			MCR_REG(_PAT_INDEX(index))
+#define XELPMP_PAT_INDEX(index)			_MMIO(_PAT_INDEX(index))
 
 #define XEHP_TILE0_ADDR_RANGE			MCR_REG(0x4900)
 #define   XEHP_TILE_LMEM_RANGE_SHIFT		8
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4f436ba7a3c83..2f6a9be0ffe61 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -468,6 +468,44 @@ void gtt_write_workarounds(struct intel_gt *gt)
 	}
 }
 
+static void xelpmp_setup_private_ppat(struct intel_uncore *uncore)
+{
+	intel_uncore_write(uncore, XELPMP_PAT_INDEX(0),
+			   MTL_PPAT_L4_0_WB);
+	intel_uncore_write(uncore, XELPMP_PAT_INDEX(1),
+			   MTL_PPAT_L4_1_WT);
+	intel_uncore_write(uncore, XELPMP_PAT_INDEX(2),
+			   MTL_PPAT_L4_3_UC);
+	intel_uncore_write(uncore, XELPMP_PAT_INDEX(3),
+			   MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
+	intel_uncore_write(uncore, XELPMP_PAT_INDEX(4),
+			   MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
+
+	/*
+	 * Remaining PAT entries are left at the hardware-default
+	 * fully-cached setting
+	 */
+}
+
+static void xelpg_setup_private_ppat(struct intel_gt *gt)
+{
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(0),
+				     MTL_PPAT_L4_0_WB);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(1),
+				     MTL_PPAT_L4_1_WT);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(2),
+				     MTL_PPAT_L4_3_UC);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(3),
+				     MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
+	intel_gt_mcr_multicast_write(gt, XEHP_PAT_INDEX(4),
+				     MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
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
@@ -603,7 +641,14 @@ void setup_private_pat(struct intel_gt *gt)
 
 	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
 
-	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
+	if (gt->type == GT_MEDIA) {
+		xelpmp_setup_private_ppat(gt->uncore);
+		return;
+	}
+
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		xelpg_setup_private_ppat(gt);
+	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		xehp_setup_private_ppat(gt);
 	else if (GRAPHICS_VER(i915) >= 12)
 		tgl_setup_private_ppat(uncore);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 69ce55f517f56..ea17849e7a5c8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -147,6 +147,14 @@ typedef u64 gen8_pte_t;
 #define GEN8_PDE_IPS_64K BIT(11)
 #define GEN8_PDE_PS_2M   BIT(7)
 
+#define MTL_PPAT_L4_CACHE_POLICY_MASK	REG_GENMASK(3, 2)
+#define MTL_PAT_INDEX_COH_MODE_MASK	REG_GENMASK(1, 0)
+#define MTL_PPAT_L4_3_UC	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
+#define MTL_PPAT_L4_1_WT	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
+#define MTL_PPAT_L4_0_WB	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
+#define MTL_3_COH_2W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
+#define MTL_2_COH_1W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
+
 enum i915_cache_level;
 
 struct drm_i915_gem_object;
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 69b489e8dfeda..2c014407225cc 100644
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
-- 
2.40.0

