Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF34700A9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 13:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEDE10E3E9;
	Fri, 10 Dec 2021 12:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F5B10E3E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 12:27:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218359187"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="218359187"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 04:27:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="516741663"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 10 Dec 2021 04:27:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Dec 2021 14:27:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 14:27:26 +0200
Message-Id: <20211210122726.12577-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Move pipe/transcoder/abox masks under
 intel_device_info.display
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Collect the dipslay related mask under the display sub-structure
in intel_device_info.

Note that there is a slight change in behaviour in that we zero
out .display entirely when !HAS_DISPLAY (aka. pipe_mask==0), so
now we also zero out the other masks (although cpu_transocder_mask
should already be zero of pipe_mask is zero). abox_mask is
only used by the display core init when HAS_DISPLAY is true, so
the actual behaviour of the system shouldn't change despite the
zeroing of these masks.

There is a lot more display stuff directly in device info that
could be moved over. Maybe someone else will be inspired to do it...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  |  4 +-
 .../drm/i915/display/intel_display_power.c    |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               |  6 +-
 drivers/gpu/drm/i915/i915_pci.c               | 76 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      | 24 +++---
 drivers/gpu/drm/i915/intel_device_info.h      |  9 +--
 6 files changed, 61 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 4b688a9727b3..43fd2f0a3e5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -372,7 +372,7 @@ enum hpd_pin {
 
 #define for_each_pipe(__dev_priv, __p) \
 	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->pipe_mask & BIT(__p))
+		for_each_if(INTEL_INFO(__dev_priv)->display.pipe_mask & BIT(__p))
 
 #define for_each_pipe_masked(__dev_priv, __p, __mask) \
 	for_each_pipe(__dev_priv, __p) \
@@ -380,7 +380,7 @@ enum hpd_pin {
 
 #define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
-		for_each_if (INTEL_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
+		for_each_if (INTEL_INFO(__dev_priv)->display.cpu_transcoder_mask & BIT(__t))
 
 #define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
 	for_each_cpu_transcoder(__dev_priv, __t) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 229b4c127c6c..05babdcf5f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5370,7 +5370,7 @@ static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
 
 static void icl_mbus_init(struct drm_i915_private *dev_priv)
 {
-	unsigned long abox_regs = INTEL_INFO(dev_priv)->abox_mask;
+	unsigned long abox_regs = INTEL_INFO(dev_priv)->display.abox_mask;
 	u32 mask, val, i;
 
 	if (IS_ALDERLAKE_P(dev_priv))
@@ -5830,7 +5830,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	enum intel_dram_type type = dev_priv->dram_info.type;
 	u8 num_channels = dev_priv->dram_info.num_channels;
 	const struct buddy_page_mask *table;
-	unsigned long abox_mask = INTEL_INFO(dev_priv)->abox_mask;
+	unsigned long abox_mask = INTEL_INFO(dev_priv)->display.abox_mask;
 	int config, i;
 
 	/* BW_BUDDY registers are not used on dgpu's beyond DG1 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a0f54a69b11d..47a9b1cb8eab 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1509,7 +1509,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >= 12)
-#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)
+#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
 #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
@@ -1562,9 +1562,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define GT_FREQUENCY_MULTIPLIER 50
 #define GEN9_FREQ_SCALER 3
 
-#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->pipe_mask))
+#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->display.pipe_mask))
 
-#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask != 0)
+#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
 
 #define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 11)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 708a23415e9c..27cba75eb255 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -162,8 +162,8 @@
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_overlay = 1, \
 	.display.cursor_needs_physical = 1, \
 	.display.overlay_needs_physical = 1, \
@@ -183,8 +183,8 @@
 
 #define I845_FEATURES \
 	GEN(2), \
-	.pipe_mask = BIT(PIPE_A), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A), \
+	.display.pipe_mask = BIT(PIPE_A), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A), \
 	.display.has_overlay = 1, \
 	.display.overlay_needs_physical = 1, \
 	.display.has_gmch = 1, \
@@ -225,8 +225,8 @@ static const struct intel_device_info i865g_info = {
 
 #define GEN3_FEATURES \
 	GEN(3), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
 	.platform_engine_mask = BIT(RCS0), \
@@ -315,8 +315,8 @@ static const struct intel_device_info pnv_m_info = {
 
 #define GEN4_FEATURES \
 	GEN(4), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
@@ -368,8 +368,8 @@ static const struct intel_device_info gm45_info = {
 
 #define GEN5_FEATURES \
 	GEN(5), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_snoop = true, \
@@ -398,8 +398,8 @@ static const struct intel_device_info ilk_m_info = {
 
 #define GEN6_FEATURES \
 	GEN(6), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.display.has_fbc = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -449,8 +449,8 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define GEN7_FEATURES  \
 	GEN(7), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.display.has_fbc = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -504,8 +504,8 @@ static const struct intel_device_info ivb_q_info = {
 	GEN7_FEATURES,
 	PLATFORM(INTEL_IVYBRIDGE),
 	.gt = 2,
-	.pipe_mask = 0, /* legal, last one wins */
-	.cpu_transcoder_mask = 0,
+	.display.pipe_mask = 0, /* legal, last one wins */
+	.display.cpu_transcoder_mask = 0,
 	.has_l3_dpf = 1,
 };
 
@@ -513,8 +513,8 @@ static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
 	.is_lp = 1,
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -538,7 +538,7 @@ static const struct intel_device_info vlv_info = {
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
@@ -608,8 +608,8 @@ static const struct intel_device_info bdw_gt3_info = {
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
@@ -686,8 +686,8 @@ static const struct intel_device_info skl_gt4_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_64bit_reloc = 1, \
@@ -795,8 +795,8 @@ static const struct intel_device_info cml_gt2_info = {
 #define GEN11_FEATURES \
 	GEN9_FEATURES, \
 	GEN11_DEFAULT_PAGE_SIZES, \
-	.abox_mask = BIT(0), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.display.abox_mask = BIT(0), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.pipe_offsets = { \
@@ -847,9 +847,9 @@ static const struct intel_device_info jsl_info = {
 #define GEN12_FEATURES \
 	GEN11_FEATURES, \
 	GEN(12), \
-	.abox_mask = GENMASK(2, 1), \
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.display.abox_mask = GENMASK(2, 1), \
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.pipe_offsets = { \
@@ -884,9 +884,9 @@ static const struct intel_device_info tgl_info = {
 static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ROCKETLAKE),
-	.abox_mask = BIT(0),
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.display.abox_mask = BIT(0),
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
@@ -906,7 +906,7 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -918,7 +918,7 @@ static const struct intel_device_info dg1_info = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
@@ -935,7 +935,7 @@ static const struct intel_device_info adl_s_info = {
 	}
 
 #define XE_LPD_FEATURES \
-	.abox_mask = GENMASK(1, 0),						\
+	.display.abox_mask = GENMASK(1, 0),					\
 	.color = { .degamma_lut_size = 128, .gamma_lut_size = 1024,		\
 		   .degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
 					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
@@ -955,7 +955,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
-	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
+	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.pipe_offsets = {							\
 		[TRANSCODER_A] = PIPE_A_OFFSET,					\
 		[TRANSCODER_B] = PIPE_B_OFFSET,					\
@@ -978,7 +978,7 @@ static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
@@ -1028,7 +1028,7 @@ static const struct intel_device_info xehpsdv_info = {
 	PLATFORM(INTEL_XEHPSDV),
 	.display = { },
 	.has_64k_pages = 1,
-	.pipe_mask = 0,
+	.display.pipe_mask = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1052,7 +1052,7 @@ static const struct intel_device_info dg2_info = {
 		BIT(VECS0) | BIT(VECS1) |
 		BIT(VCS0) | BIT(VCS2),
 	.require_force_probe = 1,
-	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 };
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index a3446a2abcb2..04fd266d70e2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -326,33 +326,33 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
 			drm_info(&dev_priv->drm,
 				 "Display fused off, disabling\n");
-			info->pipe_mask = 0;
-			info->cpu_transcoder_mask = 0;
+			info->display.pipe_mask = 0;
+			info->display.cpu_transcoder_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
-			info->pipe_mask &= ~BIT(PIPE_C);
-			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			info->display.pipe_mask &= ~BIT(PIPE_C);
+			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
-			info->pipe_mask &= ~BIT(PIPE_A);
-			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			info->display.pipe_mask &= ~BIT(PIPE_A);
+			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
-			info->pipe_mask &= ~BIT(PIPE_B);
-			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			info->display.pipe_mask &= ~BIT(PIPE_B);
+			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
-			info->pipe_mask &= ~BIT(PIPE_C);
-			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			info->display.pipe_mask &= ~BIT(PIPE_C);
+			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 
 		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
-			info->pipe_mask &= ~BIT(PIPE_D);
-			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			info->display.pipe_mask &= ~BIT(PIPE_D);
+			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 213ae2c07126..78597d382445 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -196,11 +196,6 @@ struct intel_device_info {
 
 	u8 gt; /* GT number, 0 if undefined */
 
-	u8 pipe_mask;
-	u8 cpu_transcoder_mask;
-
-	u8 abox_mask;
-
 #define DEFINE_FLAG(name) u8 name:1
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
@@ -209,6 +204,10 @@ struct intel_device_info {
 		u8 ver;
 		u8 rel;
 
+		u8 pipe_mask;
+		u8 cpu_transcoder_mask;
+		u8 abox_mask;
+
 #define DEFINE_FLAG(name) u8 name:1
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
-- 
2.32.0

