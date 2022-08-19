Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B63CD599B8F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 767F610EB95;
	Fri, 19 Aug 2022 12:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8745610EABC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910631; x=1692446631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X7BrnHhj+DmCyw4uUOn26zTlucZ9EK7hQTuL8uusIHY=;
 b=ToR3SZI8p4lq7v1H69e9IYB+/cg1g2eALG+E7K8UFLNfYsJm6xjr8hCj
 VHOBd/N0NSG5XD27BWJR+8gpTb18okDIIRKLRekOI+zrHmOTnjt1OrMHo
 825uLLg+5IjM4Ty6jnlwNR2tx1GRSaEoRWd6NyigQDIc65jlWXqqqr/Lf
 WrgP03j5U0BL/Y23Lq7eRihcWAO3glArqePgUkzZIjfmAYHy5zUk0qzpt
 Gd8nu+6ZAiFH38wemxWAI8hKjwqGXyExieqzS7VAwtmS+lAZ+zZ2a3Dr4
 ICvt8HBKTdc1ODDM98YrReMGTds261g5i3Mv7T3Bi+5zf4rqL9xhKTTIg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="273391365"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="273391365"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="750506443"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:43 +0300
Message-Id: <1261406b373998c1a171ee9ed91f7f562826eba6.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/14] drm/i915: move platform_engine_mask to
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

If it's modified runtime, it's runtime info.

mock_gem_device() is the only one that modifies it. If that could be
fixed, we wouldn't have to do this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/i915_pci.c               | 58 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.h      |  4 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 5 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 37fa813af766..ca483984d780 100644
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
index c3b4fb00351f..8c5a155fb4ac 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -178,7 +178,7 @@
 	.has_3d_pipeline = 1, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -199,7 +199,7 @@
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
 	.dma_mask_size = 32, \
@@ -237,7 +237,7 @@ static const struct intel_device_info i865g_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -329,7 +329,7 @@ static const struct intel_device_info pnv_m_info = {
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
-	.platform_engine_mask = BIT(RCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -362,7 +362,7 @@ static const struct intel_device_info i965gm_info = {
 static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -372,7 +372,7 @@ static const struct intel_device_info gm45_info = {
 	.is_mobile = 1,
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.display.supports_tv = 1,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
 
@@ -381,7 +381,7 @@ static const struct intel_device_info gm45_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
@@ -413,7 +413,7 @@ static const struct intel_device_info ilk_m_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -465,7 +465,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
@@ -539,7 +539,7 @@ static const struct intel_device_info vlv_info = {
 	.__runtime.ppgtt_size = 31,
 	.has_snoop = true,
 	.has_coherent_ggtt = false,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0),
 	.display.mmio_offset = VLV_DISPLAY_BASE,
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
@@ -550,7 +550,7 @@ static const struct intel_device_info vlv_info = {
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
@@ -614,7 +614,7 @@ static const struct intel_device_info bdw_rsvd_info = {
 static const struct intel_device_info bdw_gt3_info = {
 	BDW_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -625,7 +625,7 @@ static const struct intel_device_info chv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
@@ -679,7 +679,7 @@ static const struct intel_device_info skl_gt2_info = {
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
-	.platform_engine_mask = \
+	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
 
 
@@ -698,7 +698,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.is_lp = 1, \
 	.display.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
-	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
@@ -762,7 +762,7 @@ static const struct intel_device_info kbl_gt2_info = {
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -783,7 +783,7 @@ static const struct intel_device_info cfl_gt2_info = {
 static const struct intel_device_info cfl_gt3_info = {
 	CFL_PLATFORM,
 	.gt = 3,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
@@ -840,21 +840,21 @@ static const struct intel_device_info cml_gt2_info = {
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
 
@@ -891,7 +891,7 @@ static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
 	.display.has_modular_fia = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 };
 
@@ -904,7 +904,7 @@ static const struct intel_device_info rkl_info = {
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
 
@@ -923,7 +923,7 @@ static const struct intel_device_info dg1_info = {
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
@@ -936,7 +936,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
 };
@@ -992,7 +992,7 @@ static const struct intel_device_info adl_p_info = {
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.__runtime.ppgtt_size = 48,
 	.dma_mask_size = 39,
@@ -1040,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
 	.has_media_ratio_mode = 1,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
 		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
@@ -1062,7 +1062,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
 	.has_media_ratio_mode = 1, \
-	.platform_engine_mask = \
+	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
 		BIT(VCS0) | BIT(VCS2) | \
@@ -1101,7 +1101,7 @@ static const struct intel_device_info pvc_info = {
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.display = { 0 },
 	.has_flat_ccs = 0,
-	.platform_engine_mask =
+	.__runtime.platform_engine_mask =
 		BIT(BCS0) |
 		BIT(VCS0) |
 		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
@@ -1130,7 +1130,7 @@ static const struct intel_device_info mtl_info = {
 	.has_flat_ccs = 0,
 	.has_snoop = 1,
 	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
-	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
+	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
 };
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 1fd6e6e72680..2084f568f7ea 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -216,6 +216,8 @@ struct intel_runtime_info {
 
 	u16 device_id;
 
+	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
+
 	u32 rawclk_freq;
 
 	struct intel_step_info step;
@@ -241,8 +243,6 @@ struct intel_runtime_info {
 struct intel_device_info {
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
index 2fc3472c414b..f5904e659ef2 100644
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
2.34.1

