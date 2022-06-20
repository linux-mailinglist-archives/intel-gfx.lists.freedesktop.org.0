Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7AB5512F8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BBB10E2D0;
	Mon, 20 Jun 2022 08:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729BE10E2D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714323; x=1687250323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BjV11jXae96ezCcEvRHcfAythCOre1K6rcGeP2WxOhc=;
 b=d6HhtPSg/ToZGT+9rXI7F2geHVPPDNF+dyRGrmcHOf//cFou5Ox8rH4h
 7f4EGw/oqV75rz9MtZkDn+7xicQcl7FVML29k4b8PqyAVvjN1+DIijFN2
 yDPXYklgfwSAtJL/H6LgXquvOp3/9SBORuinpp4VTGaNt1a+NiSNC8uDT
 WNi7We7cly9daAm6v/2usLeWA94mS9PXzJlKBLOLrzbzSE9qT3uHRYhwO
 7S+f49yVXwQ77xvkJgqrT9g90rdgPoZye4Nf0g6lsEQ6/t/zJt+hbX4v/
 HkQhXq7jF4gaebswV9pkVioojmP4SJac3Ep69kovnZxbEUo6G1sINu2Iz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305275717"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305275717"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:43 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676436233"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:05 +0300
Message-Id: <aed050343e98ddaaab8f8c9f166555603d024532.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/16] drm/i915: move ppgtt_type and ppgtt_size
 to runtime info
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

If it's	modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  4 +--
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 36 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      |  6 ++--
 drivers/gpu/drm/i915/intel_device_info.h      |  6 ++--
 6 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 488a10c20b85..c8c1842e8b7b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1759,8 +1759,8 @@ int i915_gem_huge_page_mock_selftests(void)
 		return -ENOMEM;
 
 	/* Pretend to be a device which supports the 48b PPGTT */
-	mkwrite_device_info(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
-	mkwrite_device_info(dev_priv)->ppgtt_size = 48;
+	RUNTIME_INFO(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
+	RUNTIME_INFO(dev_priv)->ppgtt_size = 48;
 
 	ppgtt = i915_ppgtt_create(to_gt(dev_priv), 0);
 	if (IS_ERR(ppgtt)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index d8b94d638559..bf8570ae749a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -308,7 +308,7 @@ void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
 	ppgtt->vm.gt = gt;
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.dma = i915->drm.dev;
-	ppgtt->vm.total = BIT_ULL(INTEL_INFO(i915)->ppgtt_size);
+	ppgtt->vm.total = BIT_ULL(RUNTIME_INFO(i915)->ppgtt_size);
 	ppgtt->vm.lmem_pt_obj_flags = lmem_pt_obj_flags;
 
 	dma_resv_init(&ppgtt->vm._resv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9529add807f5..282a8103ed33 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1205,7 +1205,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
 
-#define INTEL_PPGTT(dev_priv) (INTEL_INFO(dev_priv)->ppgtt_type)
+#define INTEL_PPGTT(dev_priv) (RUNTIME_INFO(dev_priv)->ppgtt_type)
 #define HAS_PPGTT(dev_priv) \
 	(INTEL_PPGTT(dev_priv) != INTEL_PPGTT_NONE)
 #define HAS_FULL_PPGTT(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 0f888d044bc3..1e9a17062d64 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -417,8 +417,8 @@ static const struct intel_device_info ilk_m_info = {
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
@@ -470,8 +470,8 @@ static const struct intel_device_info snb_m_gt2_info = {
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
@@ -531,8 +531,8 @@ static const struct intel_device_info vlv_info = {
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
@@ -581,8 +581,8 @@ static const struct intel_device_info hsw_gt3_info = {
 	GEN(8), \
 	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
-	.ppgtt_type = INTEL_PPGTT_FULL, \
-	.ppgtt_size = 48, \
+	.__runtime.ppgtt_type = INTEL_PPGTT_FULL, \
+	.__runtime.ppgtt_size = 48, \
 	.has_64bit_reloc = 1
 
 #define BDW_PLATFORM \
@@ -629,8 +629,8 @@ static const struct intel_device_info chv_info = {
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
@@ -715,8 +715,8 @@ static const struct intel_device_info skl_gt4_info = {
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
@@ -844,14 +844,14 @@ static const struct intel_device_info ehl_info = {
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
@@ -923,7 +923,7 @@ static const struct intel_device_info dg1_info = {
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
-	.ppgtt_size = 47,
+	.__runtime.ppgtt_size = 47,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -997,7 +997,7 @@ static const struct intel_device_info adl_p_info = {
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
-	.ppgtt_size = 48,
+	.__runtime.ppgtt_size = 48,
 	.dma_mask_size = 39,
 };
 
@@ -1026,8 +1026,8 @@ static const struct intel_device_info adl_p_info = {
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
index 0b43da87d0ec..d1f5af57736c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -111,8 +111,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
 	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
-	drm_printf(p, "ppgtt-size: %d\n", info->ppgtt_size);
-	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
+	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
+	drm_printf(p, "ppgtt-type: %d\n", runtime->ppgtt_type);
 	drm_printf(p, "dma_mask_size: %u\n", info->dma_mask_size);
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
@@ -394,7 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
-		info->ppgtt_type = INTEL_PPGTT_NONE;
+		runtime->ppgtt_type = INTEL_PPGTT_NONE;
 	}
 
 	runtime->rawclk_freq = intel_read_rawclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f997ecf4b4fb..019f30c9e633 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -216,6 +216,9 @@ struct intel_runtime_info {
 
 	unsigned int page_sizes; /* page sizes supported by the HW */
 
+	enum intel_ppgtt_type ppgtt_type;
+	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
+
 	/* display */
 	struct {
 		u8 num_sprites[I915_MAX_PIPES];
@@ -235,9 +238,6 @@ struct intel_device_info {
 
 	unsigned int dma_mask_size; /* available DMA address bits */
 
-	enum intel_ppgtt_type ppgtt_type;
-	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
-
 	u32 memory_regions; /* regions supported by the HW */
 
 	u32 display_mmio_offset;
-- 
2.30.2

