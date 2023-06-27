Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A6D73FF69
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A4E10E304;
	Tue, 27 Jun 2023 15:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB15410E304
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878873; x=1719414873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/zn4uTQoanAsdI3IxuSMJhRhoS+l06+2zMFzwJJ4JhM=;
 b=a/MiBQBw13SoC3bsExZfUYsXWWLsyuN4VvbQz1aMUvoRcdvULrP+2UiP
 7Uxm61a92k6+vmqKHL1kYMV4hTiTdBm4neWBEqIZRtcg1fMJ9NxRzc456
 1MObbnnw5DvBqH6Q0KkzkGXkh6yzq0FFIKEHDQH8+RZ7esrMQwaLXHt+z
 +Fx5GT1ylb/qQsLtc4ORGpnMYKT057szKf1VibRAD/27YPdkSZzSVIsCZ
 F4i33Iy6t8LB6eRXNQgxTrSGoe+nlzCZl1z5F2zbhBeTUEcudJEeX6PeX
 kcP0zHiomI0lcu4smybdBVIpPDJA0tp4P/YjV6Fo2hdJ+8pFk+FtD9DGk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="361635419"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361635419"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="716584626"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="716584626"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:13:59 +0300
Message-Id: <2083fb26468eef13defb9b70523f7f707fc93bad.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: move platform_engine_mask and
 memory_regions to device info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The mock device creation was the only place that needed to modify
platform_engine_mask and memory_regions runtime. With mock_info in place
for mock devices, we can move them to device info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 64 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      |  2 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  7 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +-
 8 files changed, 42 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 7a008e829d4d..33a61046ba58 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -904,7 +904,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	 */
 	gt->i915 = i915;
 	gt->name = "Primary GT";
-	gt->info.engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
+	gt->info.engine_mask = INTEL_INFO(i915)->platform_engine_mask;
 
 	gt_dbg(gt, "Setting up %s\n", gt->name);
 	ret = intel_gt_tile_setup(gt, phys_addr);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 75a3a0790ef3..034b53a71541 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -99,7 +99,7 @@ static bool gsc_engine_supported(struct intel_gt *gt)
 	GEM_BUG_ON(!gt_is_root(gt) && !gt->info.engine_mask);
 
 	if (gt_is_root(gt))
-		mask = RUNTIME_INFO(gt->i915)->platform_engine_mask;
+		mask = INTEL_INFO(gt->i915)->platform_engine_mask;
 	else
 		mask = gt->info.engine_mask;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 23aa1b0e0166..ba9e07fc2b57 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -267,7 +267,7 @@ static bool vcs_supported(struct intel_gt *gt)
 	GEM_BUG_ON(!gt_is_root(gt) && !gt->info.engine_mask);
 
 	if (gt_is_root(gt))
-		mask = RUNTIME_INFO(gt->i915)->platform_engine_mask;
+		mask = INTEL_INFO(gt->i915)->platform_engine_mask;
 	else
 		mask = gt->info.engine_mask;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b4cf6f0f636d..078720a52322 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -839,7 +839,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
 
-#define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
+#define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
 #define HAS_EXTRA_GT_LIST(i915)   (INTEL_INFO(i915)->extra_gt_list)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 3d7a5db9833b..dea3609fc496 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -84,7 +84,7 @@ __diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
 	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
-	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
+	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
 
 #define I830_FEATURES \
 	GEN(2), \
@@ -93,7 +93,7 @@ __diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
 	.has_3d_pipeline = 1, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.__runtime.platform_engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -108,7 +108,7 @@ __diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.__runtime.platform_engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -140,7 +140,7 @@ static const struct intel_device_info i865g_info = {
 #define GEN3_FEATURES \
 	GEN(3), \
 	.gpu_reset_clobbers_display = true, \
-	.__runtime.platform_engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -203,7 +203,7 @@ static const struct intel_device_info pnv_m_info = {
 #define GEN4_FEATURES \
 	GEN(4), \
 	.gpu_reset_clobbers_display = true, \
-	.__runtime.platform_engine_mask = BIT(RCS0), \
+	.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -231,7 +231,7 @@ static const struct intel_device_info i965gm_info = {
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -239,13 +239,13 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
 #define GEN5_FEATURES \
 	GEN(5), \
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -271,7 +271,7 @@ static const struct intel_device_info ilk_m_info = {
 
 #define GEN6_FEATURES \
 	GEN(6), \
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -319,7 +319,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define GEN7_FEATURES  \
 	GEN(7), \
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -387,7 +387,7 @@ static const struct intel_device_info vlv_info = {
 	.__runtime.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
 	LEGACY_CACHELEVEL,
@@ -395,7 +395,7 @@ static const struct intel_device_info vlv_info = {
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	.has_runtime_pm = 1
 
@@ -453,7 +453,7 @@ static const struct intel_device_info bdw_rsvd_info = {
 static const struct intel_device_info bdw_gt3_info = {
 	BDW_PLATFORM,
 	.gt = 3,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -461,7 +461,7 @@ static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
 	.is_lp = 1,
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
@@ -505,7 +505,7 @@ static const struct intel_device_info skl_gt2_info = {
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
-	.__runtime.platform_engine_mask = \
+	.platform_engine_mask = \
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
 
 
@@ -522,7 +522,7 @@ static const struct intel_device_info skl_gt4_info = {
 #define GEN9_LP_FEATURES \
 	GEN(9), \
 	.is_lp = 1, \
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
 	.has_runtime_pm = 1, \
@@ -568,7 +568,7 @@ static const struct intel_device_info kbl_gt2_info = {
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
 	.gt = 3,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -589,7 +589,7 @@ static const struct intel_device_info cfl_gt2_info = {
 static const struct intel_device_info cfl_gt3_info = {
 	CFL_PLATFORM,
 	.gt = 3,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -622,21 +622,21 @@ static const struct intel_device_info cml_gt2_info = {
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
 static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
 static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_JASPERLAKE),
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
+	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
@@ -651,19 +651,19 @@ static const struct intel_device_info jsl_info = {
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
 static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ROCKETLAKE),
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
 
 #define DGFX_FEATURES \
-	.__runtime.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
+	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
@@ -676,7 +676,7 @@ static const struct intel_device_info dg1_info = {
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.require_force_probe = 1,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
@@ -686,7 +686,7 @@ static const struct intel_device_info dg1_info = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
 };
@@ -694,7 +694,7 @@ static const struct intel_device_info adl_s_info = {
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.__runtime.ppgtt_size = 48,
 	.dma_mask_size = 39,
@@ -746,7 +746,7 @@ static const struct intel_device_info xehpsdv_info = {
 	PLATFORM(INTEL_XEHPSDV),
 	.has_64k_pages = 1,
 	.has_media_ratio_mode = 1,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
 		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
@@ -766,7 +766,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.has_media_ratio_mode = 1, \
-	.__runtime.platform_engine_mask = \
+	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
 		BIT(VCS0) | BIT(VCS2) | \
@@ -801,7 +801,7 @@ static const struct intel_device_info pvc_info = {
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.has_flat_ccs = 0,
 	.max_pat_index = 7,
-	.__runtime.platform_engine_mask =
+	.platform_engine_mask =
 		BIT(BCS0) |
 		BIT(VCS0) |
 		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
@@ -838,8 +838,8 @@ static const struct intel_device_info mtl_info = {
 	.has_snoop = 1,
 	.max_pat_index = 4,
 	.has_pxp = 1,
-	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
+	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
+	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
 	MTL_CACHELEVEL,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 9c0f02faa0d7..9e7e33fbca6e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -126,7 +126,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
 
 	drm_printf(p, "gt: %d\n", info->gt);
-	drm_printf(p, "memory-regions: 0x%x\n", runtime->memory_regions);
+	drm_printf(p, "memory-regions: 0x%x\n", info->memory_regions);
 	drm_printf(p, "page-sizes: 0x%x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 069291b3bd37..81bfd64717cf 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -212,8 +212,6 @@ struct intel_runtime_info {
 
 	u16 device_id;
 
-	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
-
 	u32 rawclk_freq;
 
 	struct intel_step_info step;
@@ -223,8 +221,6 @@ struct intel_runtime_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
-	u32 memory_regions; /* regions supported by the HW */
-
 	bool has_pooled_eu;
 };
 
@@ -237,6 +233,9 @@ struct intel_device_info {
 
 	u8 gt; /* GT number, 0 if undefined */
 
+	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
+	u32 memory_regions; /* regions supported by the HW */
+
 #define DEFINE_FLAG(name) u8 name:1
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 4de6a4e8280d..12aa7fbb0748 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -123,8 +123,8 @@ static const struct intel_device_info mock_info = {
 	.__runtime.page_sizes = (I915_GTT_PAGE_SIZE_4K |
 				 I915_GTT_PAGE_SIZE_64K |
 				 I915_GTT_PAGE_SIZE_2M),
-	.__runtime.memory_regions = REGION_SMEM,
-	.__runtime.platform_engine_mask = BIT(0),
+	.memory_regions = REGION_SMEM,
+	.platform_engine_mask = BIT(0),
 
 	/* simply use legacy cache level for mock device */
 	.max_pat_index = 3,
-- 
2.39.2

