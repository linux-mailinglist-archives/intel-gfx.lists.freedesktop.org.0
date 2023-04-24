Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E96EC470
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 06:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0DF710E26C;
	Mon, 24 Apr 2023 04:41:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C1910E24C;
 Mon, 24 Apr 2023 04:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682311304; x=1713847304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jA/Bl21qs1b53Ic9PF271cVuM96dxCn7LvCZLHD+mVk=;
 b=SNUMkIIUcyHCFWT5M1hh4SzxGZkrIRcsgoDFjHP9XUwX/ApV2e6+1AmQ
 lvOq7PlRrrqefR3qdhNOWMCrDdmkrKqFfx2axTvLT/SBTbDgnRo1EgV5L
 Gwo5aZOWueosySnnG7NliiYE9ElMnjBzNu+EgvB0uydMiWwNY6kRzn55r
 XQEISFDRUXJQTUfPMeeqGsYQKwkHRzqzNcLdR5yATpy58i4cv3T6tKO4Y
 k4uByk5OXOq79J6wro9y6vibQl2i8j32gz1pSjq3L3kf43J0lBk/kCF7d
 A23AkY5Y3B+FHXewqZpE23iPSflU+lQwO6/pFFckAtDPrGODDUPlEbE+8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="345115345"
X-IronPort-AV: E=Sophos;i="5.99,221,1677571200"; d="scan'208";a="345115345"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 21:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="643211480"
X-IronPort-AV: E=Sophos;i="5.99,221,1677571200"; d="scan'208";a="643211480"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 21:41:42 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Sun, 23 Apr 2023 21:42:47 -0700
Message-Id: <20230424044251.3390364-3-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230424044251.3390364-1-fei.yang@intel.com>
References: <20230424044251.3390364-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/6] drm/i915: preparation for using PAT index
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

This patch is a preparation for replacing enum i915_cache_level with PAT
index. Caching policy for buffer objects is set through the PAT index in
PTE, the old i915_cache_level is not sufficient to represent all caching
modes supported by the hardware.

Preparing the transition by adding some platform dependent data structures
and helper functions to translate the cache_level to pat_index.

cachelevel_to_pat: a platform dependent array mapping cache_level to
                   pat_index.

max_pat_index: the maximum PAT index recommended in hardware specification
               Needed for validating the PAT index passed in from user
               space.

i915_gem_get_pat_index: function to convert cache_level to PAT index.

obj_to_i915(obj): macro moved to header file for wider usage.

I915_MAX_CACHE_LEVEL: upper bound of i915_cache_level for the
                      convenience of coding.

Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  9 +++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 -
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  6 ++
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  6 ++
 drivers/gpu/drm/i915/i915_pci.c               | 79 ++++++++++++++++---
 drivers/gpu/drm/i915/intel_device_info.h      |  5 ++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  9 +++
 9 files changed, 110 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 4666bb82f312..8c70a0ec7d2f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -45,6 +45,15 @@ static struct kmem_cache *slab_objects;
 
 static const struct drm_gem_object_funcs i915_gem_object_funcs;
 
+unsigned int i915_gem_get_pat_index(struct drm_i915_private *i915,
+				    enum i915_cache_level level)
+{
+	if (drm_WARN_ON(&i915->drm, level >= I915_MAX_CACHE_LEVEL))
+		return 0;
+
+	return INTEL_INFO(i915)->cachelevel_to_pat[level];
+}
+
 struct drm_i915_gem_object *i915_gem_object_alloc(void)
 {
 	struct drm_i915_gem_object *obj;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 885ccde9dc3c..4c92e17b4337 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -20,6 +20,8 @@
 
 enum intel_region_id;
 
+#define obj_to_i915(obj__) to_i915((obj__)->base.dev)
+
 static inline bool i915_gem_object_size_2big(u64 size)
 {
 	struct drm_i915_gem_object *obj;
@@ -30,6 +32,8 @@ static inline bool i915_gem_object_size_2big(u64 size)
 	return false;
 }
 
+unsigned int i915_gem_get_pat_index(struct drm_i915_private *i915,
+				    enum i915_cache_level level);
 void i915_gem_init__objects(struct drm_i915_private *i915);
 
 void i915_objects_module_exit(void);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 830c11431ee8..41b35abccf88 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -194,6 +194,7 @@ enum i915_cache_level {
 	 * engine.
 	 */
 	I915_CACHE_WT,
+	I915_MAX_CACHE_LEVEL,
 };
 
 enum i915_map_type {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index b1672e054b21..214763942aa2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -460,8 +460,6 @@ void i915_gem_shrinker_taints_mutex(struct drm_i915_private *i915,
 	fs_reclaim_release(GFP_KERNEL);
 }
 
-#define obj_to_i915(obj__) to_i915((obj__)->base.dev)
-
 /**
  * i915_gem_object_make_unshrinkable - Hide the object from the shrinker. By
  * default all object types that support shrinking(see IS_SHRINKABLE), will also
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 11b91e0453c8..7a4b1d1afce9 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -78,6 +78,12 @@ static u64 mtl_pte_encode(dma_addr_t addr,
 	case I915_CACHE_WT:
 		pte |= GEN12_PPGTT_PTE_PAT0;
 		break;
+	default:
+		/* This should never happen. Added to deal with the compile
+		 * error due to the addition of I915_MAX_CACHE_LEVEL. Will
+		 * be removed by the pat_index patch.
+		 */
+		break;
 	}
 
 	return pte;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 20915edc8bd9..c8390d03fce2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -242,6 +242,12 @@ static u64 mtl_ggtt_pte_encode(dma_addr_t addr,
 	case I915_CACHE_WT:
 		pte |= MTL_GGTT_PTE_PAT0;
 		break;
+	default:
+		/* This should never happen. Added to deal with the compile
+		 * error due to the addition of I915_MAX_CACHE_LEVEL. Will
+		 * be removed by the pat_index patch.
+		 */
+		break;
 	}
 
 	return pte;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 272a8ba37b64..e70507b48b45 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -30,6 +30,7 @@
 #include "display/intel_display_driver.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_sa_media.h"
+#include "gem/i915_gem_object_types.h"
 
 #include "i915_driver.h"
 #include "i915_drv.h"
@@ -164,6 +165,38 @@
 		.gamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING, \
 	}
 
+#define LEGACY_CACHELEVEL \
+	.cachelevel_to_pat = { \
+		[I915_CACHE_NONE]   = 0, \
+		[I915_CACHE_LLC]    = 1, \
+		[I915_CACHE_L3_LLC] = 2, \
+		[I915_CACHE_WT]     = 3, \
+	}
+
+#define TGL_CACHELEVEL \
+	.cachelevel_to_pat = { \
+		[I915_CACHE_NONE]   = 3, \
+		[I915_CACHE_LLC]    = 0, \
+		[I915_CACHE_L3_LLC] = 0, \
+		[I915_CACHE_WT]     = 2, \
+	}
+
+#define PVC_CACHELEVEL \
+	.cachelevel_to_pat = { \
+		[I915_CACHE_NONE]   = 0, \
+		[I915_CACHE_LLC]    = 3, \
+		[I915_CACHE_L3_LLC] = 3, \
+		[I915_CACHE_WT]     = 2, \
+	}
+
+#define MTL_CACHELEVEL \
+	.cachelevel_to_pat = { \
+		[I915_CACHE_NONE]   = 2, \
+		[I915_CACHE_LLC]    = 3, \
+		[I915_CACHE_L3_LLC] = 3, \
+		[I915_CACHE_WT]     = 1, \
+	}
+
 /* Keep in gen based order, and chronological order within a gen */
 
 #define GEN_DEFAULT_PAGE_SIZES \
@@ -189,11 +222,13 @@
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
+	.max_pat_index = 3, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 #define I845_FEATURES \
 	GEN(2), \
@@ -210,11 +245,13 @@
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
+	.max_pat_index = 3, \
 	I845_PIPE_OFFSETS, \
 	I845_CURSOR_OFFSETS, \
 	I845_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 static const struct intel_device_info i830_info = {
 	I830_FEATURES,
@@ -249,11 +286,13 @@ static const struct intel_device_info i865g_info = {
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
 	.dma_mask_size = 32, \
+	.max_pat_index = 3, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 static const struct intel_device_info i915g_info = {
 	GEN3_FEATURES,
@@ -341,11 +380,13 @@ static const struct intel_device_info pnv_m_info = {
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
 	.dma_mask_size = 36, \
+	.max_pat_index = 3, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	I9XX_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
@@ -395,11 +436,13 @@ static const struct intel_device_info gm45_info = {
 	/* ilk does support rc6, but we do not implement [power] contexts */ \
 	.has_rc6 = 0, \
 	.dma_mask_size = 36, \
+	.max_pat_index = 3, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 static const struct intel_device_info ilk_d_info = {
 	GEN5_FEATURES,
@@ -429,13 +472,15 @@ static const struct intel_device_info ilk_m_info = {
 	.has_rc6p = 0, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
+	.max_pat_index = 3, \
 	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
 	.__runtime.ppgtt_size = 31, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 #define SNB_D_PLATFORM \
 	GEN6_FEATURES, \
@@ -482,13 +527,15 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_reset_engine = true, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
+	.max_pat_index = 3, \
 	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
 	.__runtime.ppgtt_size = 31, \
 	IVB_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 #define IVB_D_PLATFORM \
 	GEN7_FEATURES, \
@@ -542,6 +589,7 @@ static const struct intel_device_info vlv_info = {
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
 	.dma_mask_size = 40,
+	.max_pat_index = 3,
 	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING,
 	.__runtime.ppgtt_size = 31,
 	.has_snoop = true,
@@ -553,6 +601,7 @@ static const struct intel_device_info vlv_info = {
 	I9XX_COLORS,
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
+	LEGACY_CACHELEVEL,
 };
 
 #define G75_FEATURES  \
@@ -640,6 +689,7 @@ static const struct intel_device_info chv_info = {
 	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
 	.dma_mask_size = 39,
+	.max_pat_index = 3,
 	.__runtime.ppgtt_type = INTEL_PPGTT_FULL,
 	.__runtime.ppgtt_size = 32,
 	.has_reset_engine = 1,
@@ -651,6 +701,7 @@ static const struct intel_device_info chv_info = {
 	CHV_COLORS,
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
+	LEGACY_CACHELEVEL,
 };
 
 #define GEN9_DEFAULT_PAGE_SIZES \
@@ -732,11 +783,13 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.display.has_ipc = 1, \
+	.max_pat_index = 3, \
 	HSW_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	LEGACY_CACHELEVEL
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -890,9 +943,11 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	TGL_CACHELEVEL, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
-	.display.has_dsb = 1
+	.display.has_dsb = 1, \
+	.max_pat_index = 3
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
@@ -1014,6 +1069,7 @@ static const struct intel_device_info adl_p_info = {
 	.__runtime.graphics.ip.ver = 12, \
 	.__runtime.graphics.ip.rel = 50, \
 	XE_HP_PAGE_SIZES, \
+	TGL_CACHELEVEL, \
 	.dma_mask_size = 46, \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
@@ -1032,6 +1088,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
+	.max_pat_index = 3, \
 	.__runtime.ppgtt_size = 48, \
 	.__runtime.ppgtt_type = INTEL_PPGTT_FULL
 
@@ -1108,11 +1165,13 @@ static const struct intel_device_info pvc_info = {
 	PLATFORM(INTEL_PONTEVECCHIO),
 	NO_DISPLAY,
 	.has_flat_ccs = 0,
+	.max_pat_index = 7,
 	.__runtime.platform_engine_mask =
 		BIT(BCS0) |
 		BIT(VCS0) |
 		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
 	.require_force_probe = 1,
+	PVC_CACHELEVEL,
 };
 
 #define XE_LPDP_FEATURES	\
@@ -1150,9 +1209,11 @@ static const struct intel_device_info mtl_info = {
 	.has_llc = 0,
 	.has_mslice_steering = 0,
 	.has_snoop = 1,
+	.max_pat_index = 4,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
+	MTL_CACHELEVEL,
 };
 
 #undef PLATFORM
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f032f2500f50..959a4080840c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -35,6 +35,8 @@
 #include "gt/intel_context_types.h"
 #include "gt/intel_sseu.h"
 
+#include "gem/i915_gem_object_types.h"
+
 struct drm_printer;
 struct drm_i915_private;
 struct intel_gt_definition;
@@ -308,6 +310,9 @@ struct intel_device_info {
 	 * Initial runtime info. Do not access outside of i915_driver_create().
 	 */
 	const struct intel_runtime_info __runtime;
+
+	u32 cachelevel_to_pat[I915_MAX_CACHE_LEVEL];
+	u32 max_pat_index;
 };
 
 struct intel_driver_caps {
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index f6a7c0bd2955..0eda8b4ee17f 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -123,7 +123,9 @@ struct drm_i915_private *mock_gem_device(void)
 	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
 #endif
 	struct drm_i915_private *i915;
+	struct intel_device_info *i915_info;
 	struct pci_dev *pdev;
+	unsigned int i;
 	int ret;
 
 	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
@@ -180,6 +182,13 @@ struct drm_i915_private *mock_gem_device(void)
 		I915_GTT_PAGE_SIZE_2M;
 
 	RUNTIME_INFO(i915)->memory_regions = REGION_SMEM;
+
+	/* simply use legacy cache level for mock device */
+	i915_info = (struct intel_device_info *)INTEL_INFO(i915);
+	i915_info->max_pat_index = 3;
+	for (i = 0; i < I915_MAX_CACHE_LEVEL; i++)
+		i915_info->cachelevel_to_pat[i] = i;
+
 	intel_memory_regions_hw_probe(i915);
 
 	spin_lock_init(&i915->gpu_error.lock);
-- 
2.25.1

