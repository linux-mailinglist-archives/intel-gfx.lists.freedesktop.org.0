Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D47BA599B77
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB6710EAFB;
	Fri, 19 Aug 2022 12:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E03E10E9A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910603; x=1692446603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cu82KGZxGpazoPL763Yqm7kNyuab1OF95N11vIdfe5o=;
 b=XXAKPK8W0mn8ZgFN2cERneL6MZxVHK0/cQ9wIpNm2I5TWSmKC4uy5NL0
 IHd7LGD0VoJTFFg7/Tf8oo+CMU0acqyFDALEeE/0sbeXEibiBbqmRj40z
 UJKiyX2VB0Lqg4kNjjHcUKjoLp2ufcQspcWhjLfTRtqruxjE6pW6hh8up
 lP0ICjn2oCXdjgLAhMLx3PfDI2cO3tqrnibTgB6gb+9EPbCIerxkl9uaP
 sKg6aRQDhGN4cmoBjKNTriuX2HVjlqmvw44YNQDbg2MbAqltrIDtLVpLZ
 ViwRQy9TVFm8y5sLu1sq/t6pY8WECmemzJP0SHB7tEPfeuOiDmUw4SBnJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="279961100"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="279961100"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="558921004"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:40 +0300
Message-Id: <9a9b94cb79a00229da5a564a16ea750a6d392ab6.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/14] drm/i915: move ppgtt_type and
 ppgtt_size to runtime info
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

If it's modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  4 +--
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 36 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      |  6 ++--
 drivers/gpu/drm/i915/intel_device_info.h      |  6 ++--
 6 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 8fcffd16bed6..c570cf780079 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1764,8 +1764,8 @@ int i915_gem_huge_page_mock_selftests(void)
 		return -ENOMEM;
 
 	/* Pretend to be a device which supports the 48b PPGTT */
-	mkwrite_device_info(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
-	mkwrite_device_info(dev_priv)->ppgtt_size = 48;
+	RUNTIME_INFO(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
+	RUNTIME_INFO(dev_priv)->ppgtt_size = 48;
 
 	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
 	if (IS_ERR(ppgtt)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 6ee8d1127016..7ecfa672f738 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -312,7 +312,7 @@ void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
 	ppgtt->vm.gt = gt;
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.dma = i915->drm.dev;
-	ppgtt->vm.total = BIT_ULL(INTEL_INFO(i915)->ppgtt_size);
+	ppgtt->vm.total = BIT_ULL(RUNTIME_INFO(i915)->ppgtt_size);
 	ppgtt->vm.lmem_pt_obj_flags = lmem_pt_obj_flags;
 
 	dma_resv_init(&ppgtt->vm._resv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3c2de9babf6a..625954276a70 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1210,7 +1210,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
 
-#define INTEL_PPGTT(dev_priv) (INTEL_INFO(dev_priv)->ppgtt_type)
+#define INTEL_PPGTT(dev_priv) (RUNTIME_INFO(dev_priv)->ppgtt_type)
 #define HAS_PPGTT(dev_priv) \
 	(INTEL_PPGTT(dev_priv) != INTEL_PPGTT_NONE)
 #define HAS_FULL_PPGTT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e34a64a247c0..af34a3848c43 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -421,8 +421,8 @@ static const struct intel_device_info ilk_m_info = {
 	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
-	.ppgtt_type = INTEL_PPGTT_ALIASING, \
-	.ppgtt_size = 31, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
+	.__runtime.ppgtt_size = 31, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
 	ILK_COLORS, \
@@ -474,8 +474,8 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.has_reset_engine = true, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
-	.ppgtt_type = INTEL_PPGTT_ALIASING, \
-	.ppgtt_size = 31, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING, \
+	.__runtime.ppgtt_size = 31, \
 	IVB_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
@@ -535,8 +535,8 @@ static const struct intel_device_info vlv_info = {
 	.display.has_gmch = 1,
 	.display.has_hotplug = 1,
 	.dma_mask_size = 40,
-	.ppgtt_type = INTEL_PPGTT_ALIASING,
-	.ppgtt_size = 31,
+	.__runtime.ppgtt_type = INTEL_PPGTT_ALIASING,
+	.__runtime.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
@@ -585,8 +585,8 @@ static const struct intel_device_info hsw_gt3_info = {
 	GEN(8), \
 	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
-	.ppgtt_type = INTEL_PPGTT_FULL, \
-	.ppgtt_size = 48, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_FULL, \
+	.__runtime.ppgtt_size = 48, \
 	.has_64bit_reloc = 1
 
 #define BDW_PLATFORM \
@@ -633,8 +633,8 @@ static const struct intel_device_info chv_info = {
 	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
 	.dma_mask_size = 39,
-	.ppgtt_type = INTEL_PPGTT_FULL,
-	.ppgtt_size = 32,
+	.__runtime.ppgtt_type = INTEL_PPGTT_FULL,
+	.__runtime.ppgtt_size = 32,
 	.has_reset_engine = 1,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
@@ -719,8 +719,8 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_gt_uc = 1, \
 	.dma_mask_size = 39, \
-	.ppgtt_type = INTEL_PPGTT_FULL, \
-	.ppgtt_size = 48, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_FULL, \
+	.__runtime.ppgtt_size = 48, \
 	.has_reset_engine = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
@@ -848,14 +848,14 @@ static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
-	.ppgtt_size = 36,
+	.__runtime.ppgtt_size = 36,
 };
 
 static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_JASPERLAKE),
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
-	.ppgtt_size = 36,
+	.__runtime.ppgtt_size = 36,
 };
 
 #define GEN12_FEATURES \
@@ -927,7 +927,7 @@ static const struct intel_device_info dg1_info = {
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
-	.ppgtt_size = 47,
+	.__runtime.ppgtt_size = 47,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -994,7 +994,7 @@ static const struct intel_device_info adl_p_info = {
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
-	.ppgtt_size = 48,
+	.__runtime.ppgtt_size = 48,
 	.dma_mask_size = 39,
 };
 
@@ -1023,8 +1023,8 @@ static const struct intel_device_info adl_p_info = {
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
-	.ppgtt_size = 48, \
-	.ppgtt_type = INTEL_PPGTT_FULL
+	.__runtime.ppgtt_size = 48, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_FULL
 
 #define XE_HPM_FEATURES \
 	.media.ver = 12, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index ec9c8e9613cb..0efbd8f5fe0e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -112,8 +112,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
 	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
-	drm_printf(p, "ppgtt-size: %d\n", info->ppgtt_size);
-	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
+	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
+	drm_printf(p, "ppgtt-type: %d\n", runtime->ppgtt_type);
 	drm_printf(p, "dma_mask_size: %u\n", info->dma_mask_size);
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
@@ -409,7 +409,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
-		info->ppgtt_type = INTEL_PPGTT_NONE;
+		runtime->ppgtt_type = INTEL_PPGTT_NONE;
 	}
 
 	runtime->rawclk_freq = intel_read_rawclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 324dddeb9ada..d18887890e4c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -223,6 +223,9 @@ struct intel_runtime_info {
 
 	unsigned int page_sizes; /* page sizes supported by the HW */
 
+	enum intel_ppgtt_type ppgtt_type;
+	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
+
 	/* display */
 	struct {
 		u8 num_sprites[I915_MAX_PIPES];
@@ -241,9 +244,6 @@ struct intel_device_info {
 
 	unsigned int dma_mask_size; /* available DMA address bits */
 
-	enum intel_ppgtt_type ppgtt_type;
-	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
-
 	u32 memory_regions; /* regions supported by the HW */
 
 	u8 gt; /* GT number, 0 if undefined */
-- 
2.34.1

