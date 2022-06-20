Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F39551339
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3DF10E5CF;
	Mon, 20 Jun 2022 08:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E81210E5CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714985; x=1687250985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HbdKpyHXzvcgi5Xu/mLvGX+hWyYjHLSBT0x7M+0eJjI=;
 b=VvC3imB7A0HRFtwGJdO5TBZHFOsALGTHwiyyp2xpcNoYqujYOUEjpWm2
 MxXAE6Ja6aL3IwwPsRMxr5i5RYrVUhSLY1q+H3LhsvOKkBUqR9H+kec8b
 yAv6gR9oZgtDMfiUrF/9Tzf+U2aie/K7CJtFtg1fk/nqkzjCWxARN7sm/
 1XrgMRl6c83t9uEc5kE4gyYXfW6Tg9xmvMkaefkmSXH41XaNqKrq4IFRJ
 v4Ph2eoK1maqtEX2WjB693QE1JH8dH1+wqJXSVGqrswNk+aPl/uizEGXa
 C1aRCaBM1ileP6kNRHRo0CsfhrLuF6pa6M24UKApGAOczn8EAIsUaSx0N A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343833715"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343833715"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:44 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="913562088"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:31 +0300
Message-Id: <40bddb9dbff57f55c2c5e39567de6341f12b9800.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/16] drm/i915: move pipe_mask and
 cpu_transcoder_mask to runtime info
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
 drivers/gpu/drm/i915/display/intel_display.h |  4 +-
 drivers/gpu/drm/i915/i915_drv.h              |  6 +-
 drivers/gpu/drm/i915/i915_pci.c              | 66 ++++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c     | 24 +++----
 drivers/gpu/drm/i915/intel_device_info.h     |  5 +-
 5 files changed, 53 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2feb8ae5d5d4..3a06fcb51c9b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -374,7 +374,7 @@ enum hpd_pin {
 
 #define for_each_pipe(__dev_priv, __p) \
 	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->display.pipe_mask & BIT(__p))
+		for_each_if(RUNTIME_INFO(__dev_priv)->pipe_mask & BIT(__p))
 
 #define for_each_pipe_masked(__dev_priv, __p, __mask) \
 	for_each_pipe(__dev_priv, __p) \
@@ -382,7 +382,7 @@ enum hpd_pin {
 
 #define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
-		for_each_if (INTEL_INFO(__dev_priv)->display.cpu_transcoder_mask & BIT(__t))
+		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
 
 #define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
 	for_each_cpu_transcoder(__dev_priv, __t) \
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1343350b4dfc..5bb1f0e9368c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1259,7 +1259,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
-#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
+#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
 #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
@@ -1330,9 +1330,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define GT_FREQUENCY_MULTIPLIER 50
 #define GEN9_FREQ_SCALER 3
 
-#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->display.pipe_mask))
+#define INTEL_NUM_PIPES(dev_priv) (hweight8(RUNTIME_INFO(dev_priv)->pipe_mask))
 
-#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
+#define HAS_DISPLAY(dev_priv) (RUNTIME_INFO(dev_priv)->pipe_mask != 0)
 
 #define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 1a75acfd1fc1..e9e036bec732 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -164,8 +164,8 @@
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_overlay = 1, \
 	.display.cursor_needs_physical = 1, \
 	.display.overlay_needs_physical = 1, \
@@ -186,8 +186,8 @@
 
 #define I845_FEATURES \
 	GEN(2), \
-	.display.pipe_mask = BIT(PIPE_A), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A), \
+	.__runtime.pipe_mask = BIT(PIPE_A), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A), \
 	.display.has_overlay = 1, \
 	.display.overlay_needs_physical = 1, \
 	.display.has_gmch = 1, \
@@ -229,8 +229,8 @@ static const struct intel_device_info i865g_info = {
 
 #define GEN3_FEATURES \
 	GEN(3), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
 	.__runtime.platform_engine_mask = BIT(RCS0), \
@@ -320,8 +320,8 @@ static const struct intel_device_info pnv_m_info = {
 
 #define GEN4_FEATURES \
 	GEN(4), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
@@ -374,8 +374,8 @@ static const struct intel_device_info gm45_info = {
 
 #define GEN5_FEATURES \
 	GEN(5), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
@@ -405,8 +405,8 @@ static const struct intel_device_info ilk_m_info = {
 
 #define GEN6_FEATURES \
 	GEN(6), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -457,8 +457,8 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define GEN7_FEATURES  \
 	GEN(7), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -513,8 +513,8 @@ static const struct intel_device_info ivb_q_info = {
 	GEN7_FEATURES,
 	PLATFORM(INTEL_IVYBRIDGE),
 	.gt = 2,
-	.display.pipe_mask = 0, /* legal, last one wins */
-	.display.cpu_transcoder_mask = 0,
+	.__runtime.pipe_mask = 0, /* legal, last one wins */
+	.__runtime.cpu_transcoder_mask = 0,
 	.has_l3_dpf = 1,
 };
 
@@ -522,8 +522,8 @@ static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
 	.is_lp = 1,
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -547,7 +547,7 @@ static const struct intel_device_info vlv_info = {
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
@@ -617,8 +617,8 @@ static const struct intel_device_info bdw_gt3_info = {
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
@@ -695,8 +695,8 @@ static const struct intel_device_info skl_gt4_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_3d_pipeline = 1, \
@@ -806,7 +806,7 @@ static const struct intel_device_info cml_gt2_info = {
 	GEN9_FEATURES, \
 	GEN11_DEFAULT_PAGE_SIZES, \
 	.display.abox_mask = BIT(0), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.pipe_offsets = { \
@@ -858,8 +858,8 @@ static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES, \
 	GEN(12), \
 	.display.abox_mask = GENMASK(2, 1), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.pipe_offsets = { \
@@ -895,8 +895,8 @@ static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ROCKETLAKE),
 	.display.abox_mask = BIT(0),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
@@ -917,7 +917,7 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -929,7 +929,7 @@ static const struct intel_device_info dg1_info = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -966,7 +966,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.pipe_offsets = {							\
 		[TRANSCODER_A] = PIPE_A_OFFSET,					\
 		[TRANSCODER_B] = PIPE_B_OFFSET,					\
@@ -989,7 +989,7 @@ static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
@@ -1074,7 +1074,7 @@ static const struct intel_device_info xehpsdv_info = {
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	.require_force_probe = 1,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 43fefcc52ef1..166d1d74b885 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -348,35 +348,35 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
 			drm_info(&dev_priv->drm,
 				 "Display fused off, disabling\n");
-			info->display.pipe_mask = 0;
-			info->display.cpu_transcoder_mask = 0;
+			runtime->pipe_mask = 0;
+			runtime->cpu_transcoder_mask = 0;
 			runtime->fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
-			info->display.pipe_mask &= ~BIT(PIPE_C);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			runtime->pipe_mask &= ~BIT(PIPE_C);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_A);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			runtime->pipe_mask &= ~BIT(PIPE_A);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
 			runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_B);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			runtime->pipe_mask &= ~BIT(PIPE_B);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_C);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			runtime->pipe_mask &= ~BIT(PIPE_C);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 
 		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
-			info->display.pipe_mask &= ~BIT(PIPE_D);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			runtime->pipe_mask &= ~BIT(PIPE_D);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index c354afd1c842..d78fe045a499 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -228,6 +228,9 @@ struct intel_runtime_info {
 
 	/* display */
 	struct {
+		u8 pipe_mask;
+		u8 cpu_transcoder_mask;
+
 		u8 num_sprites[I915_MAX_PIPES];
 		u8 num_scalers[I915_MAX_PIPES];
 
@@ -254,8 +257,6 @@ struct intel_device_info {
 		u8 ver;
 		u8 rel;
 
-		u8 pipe_mask;
-		u8 cpu_transcoder_mask;
 		u8 abox_mask;
 
 #define DEFINE_FLAG(name) u8 name:1
-- 
2.30.2

