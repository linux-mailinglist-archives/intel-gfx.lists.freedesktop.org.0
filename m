Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1DF517459
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 18:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF9D10F081;
	Mon,  2 May 2022 16:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D2110E8C6;
 Mon,  2 May 2022 16:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651509261; x=1683045261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5vPUBq+jpAN1evIcaeLKlck2NRB2v7DmUdw2ov/ADpE=;
 b=BhQ3yN4DSMgUV8AUV/ia3PzOIt3MazrPTMW4piL/5bxBxO6UXD62NQUR
 tueugwuol9l/Sbk+IgUqxjXDFfZhdvhd2+ukY5/Z4e3fqsMaoWNN8Ecfq
 Pdya0VXKtlERYe3bEeKSfADWmLmnIgy/ePKCv0pcUZm+3DJhynhNMQeyB
 EM9OBWy33vnOaU3M4hOn5vhnTxWVyWZWrUnI6Cb67ER8ssHlblL+9Jjst
 9DwE+aClg9DZOxXhMscLcyT8zkyLnPrZmIT49yY6HczMhdHpPrNhOFmhu
 evzafzX/cKgLZnhfUL1vhih+N1uFaNVJKORn9jadNIi0KyRA8Y6K4KeSy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="266104997"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="266104997"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 09:34:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="583781827"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 09:34:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 May 2022 09:34:09 -0700
Message-Id: <20220502163417.2635462-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502163417.2635462-1-matthew.d.roper@intel.com>
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/pvc: Define MOCS table for PVC
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>

Bspec: 45101, 72161
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h    |  1 +
 drivers/gpu/drm/i915/gt/intel_mocs.c        | 24 ++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 ++++++++---
 drivers/gpu/drm/i915/i915_drv.h             |  2 ++
 drivers/gpu/drm/i915/i915_pci.c             |  3 ++-
 drivers/gpu/drm/i915/intel_device_info.h    |  1 +
 6 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index b06611c1d4ad..7853ea194ea6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -221,6 +221,7 @@ struct intel_gt {
 
 	struct {
 		u8 uc_index;
+		u8 wb_index; /* Only for platforms listed in Bspec: 72161 */
 	} mocs;
 
 	struct intel_pxp pxp;
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c4c37585ae8c..265812589f87 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -23,6 +23,7 @@ struct drm_i915_mocs_table {
 	unsigned int n_entries;
 	const struct drm_i915_mocs_entry *table;
 	u8 uc_index;
+	u8 wb_index; /* Only for platforms listed in Bspec: 72161 */
 	u8 unused_entries_index;
 };
 
@@ -47,6 +48,7 @@ struct drm_i915_mocs_table {
 
 /* Helper defines */
 #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
+#define PVC_NUM_MOCS_ENTRIES	3
 
 /* (e)LLC caching options */
 /*
@@ -394,6 +396,17 @@ static const struct drm_i915_mocs_entry dg2_mocs_table_g10_ax[] = {
 	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
 };
 
+static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
+	/* Error */
+	MOCS_ENTRY(0, 0, L3_3_WB),
+
+	/* UC */
+	MOCS_ENTRY(1, 0, L3_1_UC),
+
+	/* WB */
+	MOCS_ENTRY(2, 0, L3_3_WB),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -423,7 +436,14 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_DG2(i915)) {
+	if (IS_PONTEVECCHIO(i915)) {
+		table->size = ARRAY_SIZE(pvc_mocs_table);
+		table->table = pvc_mocs_table;
+		table->n_entries = PVC_NUM_MOCS_ENTRIES;
+		table->uc_index = 1;
+		table->wb_index = 2;
+		table->unused_entries_index = 2;
+	} else if (IS_DG2(i915)) {
 		if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
 			table->size = ARRAY_SIZE(dg2_mocs_table_g10_ax);
 			table->table = dg2_mocs_table_g10_ax;
@@ -622,6 +642,8 @@ void intel_set_mocs_index(struct intel_gt *gt)
 
 	get_mocs_settings(gt->i915, &table);
 	gt->mocs.uc_index = table.uc_index;
+	if (HAS_L3_CCS_READ(gt->i915))
+		gt->mocs.wb_index = table.wb_index;
 }
 
 void intel_mocs_init(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a05c4b99b3fb..a656d9c2ca2b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1994,7 +1994,7 @@ void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
 static void
 engine_fake_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
-	u8 mocs;
+	u8 mocs_w, mocs_r;
 
 	/*
 	 * RING_CMD_CCTL are need to be programed to un-cached
@@ -2002,11 +2002,18 @@ engine_fake_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	 * Streamers on Gen12 onward platforms.
 	 */
 	if (GRAPHICS_VER(engine->i915) >= 12) {
-		mocs = engine->gt->mocs.uc_index;
+		if (HAS_L3_CCS_READ(engine->i915) &&
+		    engine->class == COMPUTE_CLASS)
+			mocs_r = engine->gt->mocs.wb_index;
+		else
+			mocs_r = engine->gt->mocs.uc_index;
+
+		mocs_w = engine->gt->mocs.uc_index;
+
 		wa_masked_field_set(wal,
 				    RING_CMD_CCTL(engine->mmio_base),
 				    CMD_CCTL_MOCS_MASK,
-				    CMD_CCTL_MOCS_OVERRIDE(mocs, mocs));
+				    CMD_CCTL_MOCS_OVERRIDE(mocs_w, mocs_r));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2dddc27a1b0e..8c8e7308502b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1369,6 +1369,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
 
+#define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
+
 /* DPF == dynamic parity feature */
 #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
 #define NUM_L3_SLICES(dev_priv) (IS_HSW_GT3(dev_priv) ? \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 498708b33924..07722cdf63ac 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1076,7 +1076,8 @@ static const struct intel_device_info ats_m_info = {
 
 #define XE_HPC_FEATURES \
 	XE_HP_FEATURES, \
-	.dma_mask_size = 52
+	.dma_mask_size = 52, \
+	.has_l3_ccs_read = 1
 
 __maybe_unused
 static const struct intel_device_info pvc_info = {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e7d2cf7d65c8..09e33296157a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -150,6 +150,7 @@ enum intel_ppgtt_type {
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
+	func(has_l3_ccs_read); \
 	func(has_l3_dpf); \
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
-- 
2.35.1

