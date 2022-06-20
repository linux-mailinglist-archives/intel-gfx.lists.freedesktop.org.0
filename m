Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22339551336
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393C910E5C4;
	Mon, 20 Jun 2022 08:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9320810E59A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714969; x=1687250969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9mC3Mu+rEV8ZmRyLD6cAXcw6e3XUf/d/J9nSqjuipH4=;
 b=SRleImiqpg1GRWV+g0iXvOB4yeb6aRJ2DOQ4EnKDCWjFWO+iBc52lPwp
 aAUTkKiOWTLYzW0P3J/hQBNX0NmF7rvFL1LsMp8cDXoVIt+kmZ4z3CHzd
 9rIHkv0eTFt5yZE1ag0QDAHLXRhUTONLotdUjCWbMJT9ewToDAJrvYR/c
 vsjp6aq55kxeHqEsztWiA5m6xGMjuMeWbuULEGa06kOjghkT8iPcjb+Z8
 gCAKTvNDTsJT28cgbvUbhUBm3NXIL7+LKplCj/wCaGdPp+VvqrLW5EWyE
 qt/qYa6DhMFH8/DYm7JUwR6NRS+F45WuD2Yx9dLxlNyPmme+S1qNlrU2l A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341523263"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341523263"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:29 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591080069"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:21 +0300
Message-Id: <67f96e5575f12304d81db702c02ddb8c5f1e9aac.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/16] drm/i915: move platform_engine_mask to
 runtime info
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

mock_gem_device() is the only one that modifies it. If that could be
fixed, we wouldn't have to do this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 56 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.h      |  4 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 5 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 136cc44c3deb..77b6eeaf679d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -736,7 +736,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	u16 vdbox_mask;
 	u16 vebox_mask;
 
-	info->engine_mask = INTEL_INFO(i915)->platform_engine_mask;
+	info->engine_mask = RUNTIME_INFO(i915)->platform_engine_mask;
 
 	if (GRAPHICS_VER(i915) < 11)
 		return info->engine_mask;
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 345d39d54bc9..64794063860c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -174,7 +174,7 @@
 	.has_3d_pipeline = 1, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -195,7 +195,7 @@
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -233,7 +233,7 @@ static const struct intel_device_info i865g_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -325,7 +325,7 @@ static const struct intel_device_info pnv_m_info = {
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -358,7 +358,7 @@ static const struct intel_device_info i965gm_info = {
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -368,7 +368,7 @@ static const struct intel_device_info gm45_info = {
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.display.supports_tv = 1,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -377,7 +377,7 @@ static const struct intel_device_info gm45_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -409,7 +409,7 @@ static const struct intel_device_info ilk_m_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -461,7 +461,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -535,7 +535,7 @@ static const struct intel_device_info vlv_info = {
 	.__runtime.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
 	.display_mmio_offset = VLV_DISPLAY_BASE,
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
@@ -546,7 +546,7 @@ static const struct intel_device_info vlv_info = {
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
@@ -610,7 +610,7 @@ static const struct intel_device_info bdw_rsvd_info = {
 static const struct intel_device_info bdw_gt3_info = {
 	BDW_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -621,7 +621,7 @@ static const struct intel_device_info chv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
@@ -675,7 +675,7 @@ static const struct intel_device_info skl_gt2_info = {
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
-	.platform_engine_mask = \
+	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
 
 
@@ -694,7 +694,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.is_lp = 1, \
 	.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
@@ -758,7 +758,7 @@ static const struct intel_device_info kbl_gt2_info = {
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -779,7 +779,7 @@ static const struct intel_device_info cfl_gt2_info = {
 static const struct intel_device_info cfl_gt3_info = {
 	CFL_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -836,21 +836,21 @@ static const struct intel_device_info cml_gt2_info = {
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
 static const struct intel_device_info ehl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ELKHARTLAKE),
-	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
 static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_JASPERLAKE),
-	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.__runtime.ppgtt_size = 36,
 };
 
@@ -887,7 +887,7 @@ static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
 	.display.has_modular_fia = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
@@ -900,7 +900,7 @@ static const struct intel_device_info rkl_info = {
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
 
@@ -919,7 +919,7 @@ static const struct intel_device_info dg1_info = {
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
@@ -932,7 +932,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
 };
@@ -995,7 +995,7 @@ static const struct intel_device_info adl_p_info = {
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.__runtime.ppgtt_size = 48,
 	.dma_mask_size = 39,
@@ -1043,7 +1043,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
 	.has_media_ratio_mode = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
 		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
@@ -1065,7 +1065,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
 	.has_media_ratio_mode = 1, \
-	.platform_engine_mask = \
+	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
 		BIT(VCS0) | BIT(VCS2) | \
@@ -1104,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.display = { 0 },
 	.has_flat_ccs = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(BCS0) |
 		BIT(VCS0) |
 		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 1a2d19156410..8724621944a9 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -209,6 +209,8 @@ struct intel_runtime_info {
 
 	u16 device_id;
 
+	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
+
 	u32 rawclk_freq;
 
 	struct intel_step_info step;
@@ -235,8 +237,6 @@ struct intel_device_info {
 	struct ip_version graphics;
 	struct ip_version media;
 
-	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
-
 	enum intel_platform platform;
 
 	unsigned int dma_mask_size; /* available DMA address bits */
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index a852c471d1b3..c96b5c762ae6 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2067,7 +2067,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 
 	if (GRAPHICS_VER(i915) >= 11) {
 		/* we'll prune the domains of missing engines later */
-		intel_engine_mask_t emask = INTEL_INFO(i915)->platform_engine_mask;
+		intel_engine_mask_t emask = RUNTIME_INFO(i915)->platform_engine_mask;
 		int i;
 
 		uncore->fw_get_funcs = &uncore_get_fallback;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 3f05e870dc68..207e6996f423 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -209,7 +209,7 @@ struct drm_i915_private *mock_gem_device(void)
 	mock_init_ggtt(to_gt(i915));
 	to_gt(i915)->vm = i915_vm_get(&to_gt(i915)->ggtt->vm);
 
-	mkwrite_device_info(i915)->platform_engine_mask = BIT(0);
+	RUNTIME_INFO(i915)->platform_engine_mask = BIT(0);
 	to_gt(i915)->info.engine_mask = BIT(0);
 
 	to_gt(i915)->engine[RCS0] = mock_engine(i915, "mock", RCS0);
-- 
2.30.2

