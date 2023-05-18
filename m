Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19C470785E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 05:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35FA10E4D7;
	Thu, 18 May 2023 03:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98E410E4D4;
 Thu, 18 May 2023 03:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684379890; x=1715915890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C9ixQWU6ImRxgZ56ClXcHwAe06vcJAb/skiRdyz/jT0=;
 b=IHbjKczs/ycZWB0A+zeeL+OtmytM5eaCb0AKDKdcnP1vdIp4C1ESoilx
 4IKijviuKpENiggbpZIDHq8/NlI+AM0DKxNVTOj+aaNLq/pXivjZf1N04
 INFxr2nWcDB2wOGy7nmXCKjFGJvo2XnXOkfdfyv3cq+2/XH+Ghs5VOwUS
 5QASAnvVbwzQAoWf25gvY/7n9YroqEQEBE1DQnZV54SXDnM3Mb0CToYon
 lCFLD+URWKazCzc0s9eP/mfXb1loUKN3ym9hwhY8R9cir0tMZFUGC7rcv
 TghwwG1/ZLbMbfMKqTwPZ7mqXg0lPSdqtLhc0HMrqlBI5A0+v6MIweIM7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341348743"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="341348743"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652472432"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="652472432"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 20:18:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 20:18:02 -0700
Message-Id: <20230518031804.3133486-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230518031804.3133486-1-matthew.d.roper@intel.com>
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: Move display runtime info
 to display structure
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the runtime info specific to display into display-specific
structures as has already been done with the constant display info.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_device.h   |  23 ++
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  17 +-
 drivers/gpu/drm/i915/i915_pci.c               | 221 +++++++++++-------
 drivers/gpu/drm/i915/intel_device_info.c      | 101 ++++----
 drivers/gpu/drm/i915/intel_device_info.h      |  18 --
 drivers/gpu/drm/i915/intel_step.c             |   8 +-
 13 files changed, 245 insertions(+), 167 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 93c3226b98c9..182c6dd64f47 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -306,7 +306,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 		return PTR_ERR(crtc);
 
 	crtc->pipe = pipe;
-	crtc->num_scalers = RUNTIME_INFO(dev_priv)->num_scalers[pipe];
+	crtc->num_scalers = DISPLAY_RUNTIME_INFO(dev_priv)->num_scalers[pipe];
 
 	if (DISPLAY_VER(dev_priv) >= 9)
 		primary = skl_universal_plane_create(dev_priv, pipe,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index dd2def27add9..093fc881ddc1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -814,7 +814,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 						   DRM_MODE_ROTATE_0 |
 						   DRM_MODE_ROTATE_180);
 
-	zpos = RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
+	zpos = DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 09320e14d75c..f1130e2c3542 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3366,7 +3366,7 @@ static u8 bigjoiner_pipes(struct drm_i915_private *i915)
 	else
 		pipes = 0;
 
-	return pipes & RUNTIME_INFO(i915)->pipe_mask;
+	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
 }
 
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index aa3a21ccd7fe..c744c021af23 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -105,7 +105,7 @@ enum i9xx_plane_id {
 };
 
 #define plane_name(p) ((p) + 'A')
-#define sprite_name(p, s) ((p) * RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
+#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
 
 #define for_each_plane_id_on_crtc(__crtc, __p) \
 	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
@@ -221,7 +221,7 @@ enum phy_fia {
 
 #define for_each_pipe(__dev_priv, __p) \
 	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
-		for_each_if(RUNTIME_INFO(__dev_priv)->pipe_mask & BIT(__p))
+		for_each_if(DISPLAY_RUNTIME_INFO(__dev_priv)->pipe_mask & BIT(__p))
 
 #define for_each_pipe_masked(__dev_priv, __p, __mask) \
 	for_each_pipe(__dev_priv, __p) \
@@ -229,7 +229,7 @@ enum phy_fia {
 
 #define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
-		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
+		for_each_if (DISPLAY_RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
 
 #define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
 	for_each_cpu_transcoder(__dev_priv, __t) \
@@ -237,7 +237,7 @@ enum phy_fia {
 
 #define for_each_sprite(__dev_priv, __p, __s)				\
 	for ((__s) = 0;							\
-	     (__s) < RUNTIME_INFO(__dev_priv)->num_sprites[(__p)];	\
+	     (__s) < DISPLAY_RUNTIME_INFO(__dev_priv)->num_sprites[(__p)];	\
 	     (__s)++)
 
 #define for_each_port(__port) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index c689d582dbf1..241f39b13f2f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -29,7 +29,30 @@
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+struct intel_display_runtime_info {
+	struct {
+		u16 ver;
+		u16 rel;
+		u16 step;
+	} ip;
+
+	u8 pipe_mask;
+	u8 cpu_transcoder_mask;
+
+	u8 num_sprites[I915_MAX_PIPES];
+	u8 num_scalers[I915_MAX_PIPES];
+
+	u8 fbc_mask;
+
+	bool has_hdcp;
+	bool has_dmc;
+	bool has_dsc;
+};
+
 struct intel_display_device_info {
+	/* Initial runtime info. */
+	const struct intel_display_runtime_info __runtime;
+
 	u8 abox_mask;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 11bb8cf9c9d0..1966f9396201 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -56,7 +56,7 @@
 
 #define for_each_fbc_id(__dev_priv, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
-		for_each_if(RUNTIME_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
+		for_each_if(DISPLAY_RUNTIME_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
 
 #define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
 	for_each_fbc_id((__dev_priv), (__fbc_id)) \
@@ -1708,10 +1708,10 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	enum intel_fbc_id fbc_id;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
-		RUNTIME_INFO(i915)->fbc_mask = 0;
+		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
 
 	if (need_fbc_vtd_wa(i915))
-		RUNTIME_INFO(i915)->fbc_mask = 0;
+		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
 
 	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index dd539106ee5a..1f96d1fa68e0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1103,7 +1103,7 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
 {
-	return RUNTIME_INFO(dev_priv)->has_hdcp &&
+	return DISPLAY_RUNTIME_INFO(dev_priv)->has_hdcp &&
 		(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 110401aab038..36070d86550f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1944,7 +1944,7 @@ static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
 static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
 			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
 {
-	if ((RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
+	if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
 		return false;
 
 	return plane_id == PLANE_PRIMARY;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 116fc4441f8b..d312314b212e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -205,6 +205,7 @@ struct drm_i915_private {
 
 	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
+	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */
 	struct intel_driver_caps caps;
 
 	struct i915_dsm dsm;
@@ -408,7 +409,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
 #define INTEL_INFO(i915)	(&(i915)->__info)
+#define DISPLAY_INFO(i915)	(INTEL_INFO(i915)->display)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
+#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->__display_runtime)
 #define DRIVER_CAPS(i915)	(&(i915)->caps)
 
 #define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
@@ -427,7 +430,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define IS_MEDIA_VER(i915, from, until) \
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
-#define DISPLAY_VER(i915)	(RUNTIME_INFO(i915)->display.ip.ver)
+#define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
@@ -810,7 +813,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define I915_HAS_HOTPLUG(i915)	(INTEL_INFO(i915)->display->has_hotplug)
 
 #define HAS_FW_BLC(i915)	(DISPLAY_VER(i915) > 2)
-#define HAS_FBC(i915)	(RUNTIME_INFO(i915)->fbc_mask != 0)
+#define HAS_FBC(i915)	(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
 #define HAS_CUR_FBC(i915)	(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
 
 #define HAS_DPT(i915)	(DISPLAY_VER(i915) >= 13)
@@ -830,7 +833,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR_HW_TRACKING(i915) \
 	(INTEL_INFO(i915)->display->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	 (DISPLAY_VER(i915) >= 12)
-#define HAS_TRANSCODER(i915, trans)	 ((RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)
+#define HAS_TRANSCODER(i915, trans)	 ((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(i915)		 (INTEL_INFO(i915)->has_rc6)
 #define HAS_RC6p(i915)		 (INTEL_INFO(i915)->has_rc6p)
@@ -838,9 +841,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_RPS(i915)	(INTEL_INFO(i915)->has_rps)
 
-#define HAS_DMC(i915)	(RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DMC(i915)	(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
 #define HAS_DSB(i915)	(INTEL_INFO(i915)->display->has_dsb)
-#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
+#define HAS_DSC(__i915)		(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
 #define HAS_HECI_PXP(i915) \
@@ -902,9 +905,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
 				 2 : HAS_L3_DPF(i915))
 
-#define INTEL_NUM_PIPES(i915) (hweight8(RUNTIME_INFO(i915)->pipe_mask))
+#define INTEL_NUM_PIPES(i915) (hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
 
-#define HAS_DISPLAY(i915) (RUNTIME_INFO(i915)->pipe_mask != 0)
+#define HAS_DISPLAY(i915) (DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 
 #define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index dd874a4db604..8b19df1294de 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -41,10 +41,11 @@
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
 	.__runtime.graphics.ip.ver = (x), \
-	.__runtime.media.ip.ver = (x), \
-	.__runtime.display.ip.ver = (x)
+	.__runtime.media.ip.ver = (x)
 
-#define NO_DISPLAY .__runtime.pipe_mask = 0
+static const struct intel_display_device_info no_display = { 0 };
+
+#define NO_DISPLAY .display = &no_display
 
 #define I845_PIPE_OFFSETS \
 	.pipe_offsets = { \
@@ -212,7 +213,11 @@
 	.has_gmch = 1, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS
+	I9XX_COLORS, \
+	\
+	.__runtime.ip.ver = 2, \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct intel_display_device_info i830_display = {
 	I830_DISPLAY,
@@ -221,8 +226,6 @@ static const struct intel_display_device_info i830_display = {
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.gpu_reset_clobbers_display = true, \
 	.has_3d_pipeline = 1, \
 	.hws_needs_physical = 1, \
@@ -242,7 +245,11 @@ static const struct intel_display_device_info i830_display = {
 	.has_gmch = 1, \
 	I845_PIPE_OFFSETS, \
 	I845_CURSOR_OFFSETS, \
-	I845_COLORS
+	I845_COLORS, \
+	\
+	.__runtime.ip.ver = 2, \
+	.__runtime.pipe_mask = BIT(PIPE_A), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A)
 
 static const struct intel_display_device_info i845_display = {
 	I845_DISPLAY,
@@ -250,8 +257,6 @@ static const struct intel_display_device_info i845_display = {
 
 #define I845_FEATURES \
 	GEN(2), \
-	.__runtime.pipe_mask = BIT(PIPE_A), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A), \
 	.has_3d_pipeline = 1, \
 	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
@@ -279,24 +284,26 @@ static const struct intel_device_info i845g_info = {
 
 static const struct intel_display_device_info i85x_display = {
 	I830_DISPLAY,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i85x_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I85X),
 	.display = &i85x_display,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info i865g_display = {
 	I845_DISPLAY,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info i865g_info = {
 	I845_FEATURES,
 	PLATFORM(INTEL_I865G),
 	.display = &i865g_display,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN3_DISPLAY \
@@ -304,7 +311,11 @@ static const struct intel_device_info i865g_info = {
 	.has_overlay = 1, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS
+	I9XX_COLORS, \
+	\
+	.__runtime.ip.ver = 3, \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct intel_display_device_info i915g_display = {
 	GEN3_DISPLAY,
@@ -317,6 +328,8 @@ static const struct intel_display_device_info i915gm_display = {
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
 	.supports_tv = 1,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info i945g_display = {
@@ -332,6 +345,8 @@ static const struct intel_display_device_info i945gm_display = {
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
 	.supports_tv = 1,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info g33_display = {
@@ -341,8 +356,6 @@ static const struct intel_display_device_info g33_display = {
 
 #define GEN3_FEATURES \
 	GEN(3), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.gpu_reset_clobbers_display = true, \
 	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
@@ -368,7 +381,6 @@ static const struct intel_device_info i915gm_info = {
 	PLATFORM(INTEL_I915GM),
 	.display = &i915gm_display,
 	.is_mobile = 1,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -386,7 +398,6 @@ static const struct intel_device_info i945gm_info = {
 	PLATFORM(INTEL_I945GM),
 	.display = &i945gm_display,
 	.is_mobile = 1,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
@@ -418,7 +429,11 @@ static const struct intel_device_info pnv_m_info = {
 	.has_gmch = 1, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS
+	I9XX_COLORS, \
+	\
+	.__runtime.ip.ver = 4, \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct intel_display_device_info i965g_display = {
 	GEN4_DISPLAY,
@@ -429,6 +444,8 @@ static const struct intel_display_device_info i965gm_display = {
 	GEN4_DISPLAY,
 	.has_overlay = 1,
 	.supports_tv = 1,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_display_device_info g45_display = {
@@ -438,12 +455,12 @@ static const struct intel_display_device_info g45_display = {
 static const struct intel_display_device_info gm45_display = {
 	GEN4_DISPLAY,
 	.supports_tv = 1,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN4_FEATURES \
 	GEN(4), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.gpu_reset_clobbers_display = true, \
 	.__runtime.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
@@ -468,7 +485,6 @@ static const struct intel_device_info i965gm_info = {
 	PLATFORM(INTEL_I965GM),
 	.display = &i965gm_display,
 	.is_mobile = 1,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
@@ -485,7 +501,6 @@ static const struct intel_device_info gm45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.display = &gm45_display,
 	.gpu_reset_clobbers_display = false,
@@ -493,8 +508,6 @@ static const struct intel_device_info gm45_info = {
 
 #define GEN5_FEATURES \
 	GEN(5), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
@@ -511,7 +524,11 @@ static const struct intel_device_info gm45_info = {
 	.has_hotplug = 1, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	ILK_COLORS
+	ILK_COLORS, \
+	\
+	.__runtime.ip.ver = 5, \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 static const struct intel_display_device_info ilk_d_display = {
 	ILK_DISPLAY,
@@ -525,6 +542,8 @@ static const struct intel_device_info ilk_d_info = {
 
 static const struct intel_display_device_info ilk_m_display = {
 	ILK_DISPLAY,
+
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info ilk_m_info = {
@@ -533,14 +552,10 @@ static const struct intel_device_info ilk_m_info = {
 	.display = &ilk_m_display,
 	.is_mobile = 1,
 	.has_rps = true,
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define GEN6_FEATURES \
 	GEN(6), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
@@ -562,6 +577,11 @@ static const struct intel_display_device_info snb_display = {
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
 	ILK_COLORS,
+
+	.__runtime.ip.ver = 6,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define SNB_D_PLATFORM \
@@ -600,9 +620,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define GEN7_FEATURES  \
 	GEN(7), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_3d_pipeline = 1, \
 	.has_coherent_ggtt = true, \
@@ -629,6 +646,12 @@ static const struct intel_display_device_info ivb_display = {
 	IVB_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
+
+	.__runtime.ip.ver = 7,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info ivb_d_gt1_info = {
@@ -676,14 +699,16 @@ static const struct intel_display_device_info vlv_display = {
 	I9XX_PIPE_OFFSETS,
 	I9XX_CURSOR_OFFSETS,
 	I9XX_COLORS,
+
+	.__runtime.ip.ver = 7,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 };
 
 static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
 	.is_lp = 1,
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.display = &vlv_display,
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
@@ -704,8 +729,6 @@ static const struct intel_device_info vlv_info = {
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	.has_runtime_pm = 1
 
@@ -722,6 +745,12 @@ static const struct intel_display_device_info hsw_display = {
 	HSW_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
+
+	.__runtime.ip.ver = 7,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info hsw_gt1_info = {
@@ -759,6 +788,12 @@ static const struct intel_display_device_info bdw_display = {
 	HSW_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
+
+	.__runtime.ip.ver = 8,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define BDW_PLATFORM \
@@ -801,13 +836,16 @@ static const struct intel_display_device_info chv_display = {
 	CHV_PIPE_OFFSETS,
 	CHV_CURSOR_OFFSETS,
 	CHV_COLORS,
+
+	.__runtime.ip.ver = 8,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C),
 };
 
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display = &chv_display,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
@@ -836,9 +874,7 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.__runtime.has_dmc = 1, \
-	.has_gt_uc = 1, \
-	.__runtime.has_hdcp = 1
+	.has_gt_uc = 1
 
 static const struct intel_display_device_info skl_display = {
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
@@ -853,6 +889,14 @@ static const struct intel_display_device_info skl_display = {
 	HSW_PIPE_OFFSETS,
 	IVB_CURSOR_OFFSETS,
 	IVB_COLORS,
+
+	.__runtime.ip.ver = 9,
+	.__runtime.has_dmc = 1,
+	.__runtime.has_hdcp = 1,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 #define SKL_PLATFORM \
@@ -893,16 +937,9 @@ static const struct intel_device_info skl_gt4_info = {
 	GEN(9), \
 	.is_lp = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
-		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.__runtime.has_hdcp = 1, \
 	.has_runtime_pm = 1, \
-	.__runtime.has_dmc = 1, \
 	.has_rc6 = 1, \
 	.has_rps = true, \
 	.has_logical_ring_contexts = 1, \
@@ -929,11 +966,21 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_psr_hw_tracking = 1, \
 	HSW_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
-	IVB_COLORS
+	IVB_COLORS, \
+	\
+	.__runtime.has_dmc = 1, \
+	.__runtime.has_hdcp = 1, \
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
+		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C)
 
 static const struct intel_display_device_info bxt_display = {
 	GEN9_LP_DISPLAY,
 	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
+
+	.__runtime.ip.ver = 9,
 };
 
 static const struct intel_device_info bxt_info = {
@@ -946,12 +993,13 @@ static const struct intel_display_device_info glk_display = {
 	GEN9_LP_DISPLAY,
 	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
 	GLK_COLORS,
+
+	.__runtime.ip.ver = 10,
 };
 
 static const struct intel_device_info glk_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_GEMINILAKE),
-	.__runtime.display.ip.ver = 10,
 	.display = &glk_display,
 };
 
@@ -1027,11 +1075,7 @@ static const struct intel_device_info cml_gt2_info = {
 #define GEN11_FEATURES \
 	GEN9_FEATURES, \
 	GEN11_DEFAULT_PAGE_SIZES, \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	GEN(11), \
-	.__runtime.has_dsc = 1, \
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
 
@@ -1064,6 +1108,16 @@ static const struct intel_display_device_info gen11_display = {
 	},
 	IVB_CURSOR_OFFSETS,
 	ICL_COLORS,
+
+	.__runtime.ip.ver = 11,
+	.__runtime.has_dmc = 1,
+	.__runtime.has_dsc = 1, \
+	.__runtime.has_hdcp = 1,
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) |
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A),
 };
 
 static const struct intel_device_info icl_info = {
@@ -1093,10 +1147,6 @@ static const struct intel_device_info jsl_info = {
 #define GEN12_FEATURES \
 	GEN11_FEATURES, \
 	GEN(12), \
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
-		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	TGL_CACHELEVEL, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
@@ -1131,7 +1181,17 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
-	ICL_COLORS
+	ICL_COLORS, \
+	\
+	.__runtime.ip.ver = 12, \
+	.__runtime.has_dmc = 1, \
+	.__runtime.has_dsc = 1, \
+	.__runtime.has_hdcp = 1, \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A)
 
 static const struct intel_display_device_info tgl_display = {
 	XE_D_DISPLAY,
@@ -1150,14 +1210,15 @@ static const struct intel_display_device_info rkl_display = {
 	.abox_mask = BIT(0),
 	.has_hti = 1,
 	.has_psr_hw_tracking = 0,
+
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C),
 };
 
 static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ROCKETLAKE),
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 	.display = &rkl_display,
@@ -1176,7 +1237,6 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -1195,7 +1255,6 @@ static const struct intel_display_device_info adl_s_display = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
-	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
@@ -1235,29 +1294,28 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
-
-#define XE_LPD_RUNTIME \
+	TGL_CURSOR_OFFSETS,							\
+										\
+	.__runtime.ip.ver = 13,							\
 	.__runtime.has_dmc = 1,							\
 	.__runtime.has_dsc = 1,							\
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.__runtime.has_hdcp = 1,						\
-	.__runtime.display.ip.ver = 13,							\
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D)
 
 static const struct intel_display_device_info xe_lpd_display = {
 	XE_LPD_FEATURES,
 	.has_cdclk_crawl = 1,
 	.has_psr_hw_tracking = 0,
-};
 
-static const struct intel_device_info adl_p_info = {
-	GEN12_FEATURES,
-	XE_LPD_RUNTIME,
-	PLATFORM(INTEL_ALDERLAKE_P),
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
+};
+
+static const struct intel_device_info adl_p_info = {
+	GEN12_FEATURES,
+	PLATFORM(INTEL_ALDERLAKE_P),
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.__runtime.ppgtt_size = 48,
@@ -1341,13 +1399,13 @@ static const struct intel_device_info xehpsdv_info = {
 static const struct intel_display_device_info xe_hpd_display = {
 	XE_LPD_FEATURES,
 	.has_cdclk_squash = 1,
+
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 };
 
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
-	XE_LPD_RUNTIME,
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	.display = &xe_hpd_display,
 };
 
@@ -1386,11 +1444,6 @@ static const struct intel_device_info pvc_info = {
 	PVC_CACHELEVEL,
 };
 
-#define XE_LPDP_RUNTIME	\
-	XE_LPD_RUNTIME,	\
-	.__runtime.display.ip.ver = 14,	\
-	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
-
 static const struct intel_gt_definition xelpmp_extra_gt[] = {
 	{
 		.type = GT_MEDIA,
@@ -1405,13 +1458,15 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	XE_LPD_FEATURES,
 	.has_cdclk_crawl = 1,
 	.has_cdclk_squash = 1,
+
+	.__runtime.ip.ver = 14,
+	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 };
 
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
-	XE_LPDP_RUNTIME,
-	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	/*
 	 * Real graphics IP version will be obtained from hardware GMD_ID
 	 * register.  Value provided here is just for sanity checking.
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d0bf626d0360..e10907ddbade 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -95,6 +95,9 @@ void intel_device_info_print(const struct intel_device_info *info,
 			     const struct intel_runtime_info *runtime,
 			     struct drm_printer *p)
 {
+	const struct intel_display_runtime_info *display_runtime =
+		&info->display->__runtime;
+
 	if (runtime->graphics.ip.rel)
 		drm_printf(p, "graphics version: %u.%02u\n",
 			   runtime->graphics.ip.ver,
@@ -111,13 +114,13 @@ void intel_device_info_print(const struct intel_device_info *info,
 		drm_printf(p, "media version: %u\n",
 			   runtime->media.ip.ver);
 
-	if (runtime->display.ip.rel)
+	if (display_runtime->ip.rel)
 		drm_printf(p, "display version: %u.%02u\n",
-			   runtime->display.ip.ver,
-			   runtime->display.ip.rel);
+			   display_runtime->ip.ver,
+			   display_runtime->ip.rel);
 	else
 		drm_printf(p, "display version: %u\n",
-			   runtime->display.ip.ver);
+			   display_runtime->ip.ver);
 
 	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
 	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
@@ -142,9 +145,9 @@ void intel_device_info_print(const struct intel_device_info *info,
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
-	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
-	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
-	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
+	drm_printf(p, "has_hdcp: %s\n", str_yes_no(display_runtime->has_hdcp));
+	drm_printf(p, "has_dmc: %s\n", str_yes_no(display_runtime->has_dmc));
+	drm_printf(p, "has_dsc: %s\n", str_yes_no(display_runtime->has_dsc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -342,6 +345,7 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
 static void intel_ipver_early_init(struct drm_i915_private *i915)
 {
 	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
+	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
 
 	if (!HAS_GMD_ID(i915)) {
 		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
@@ -363,7 +367,7 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
 		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
 	}
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
-		    &runtime->display.ip);
+		    (struct intel_ip_version *)&display_runtime->ip);
 	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
 		    &runtime->media.ip);
 }
@@ -410,32 +414,34 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
+	struct intel_display_runtime_info *display_runtime =
+		DISPLAY_RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_scalers[pipe] = 0;
+			display_runtime->num_scalers[pipe] = 0;
 	else if (DISPLAY_VER(dev_priv) >= 11) {
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_scalers[pipe] = 2;
+			display_runtime->num_scalers[pipe] = 2;
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		runtime->num_scalers[PIPE_A] = 2;
-		runtime->num_scalers[PIPE_B] = 2;
-		runtime->num_scalers[PIPE_C] = 1;
+		display_runtime->num_scalers[PIPE_A] = 2;
+		display_runtime->num_scalers[PIPE_B] = 2;
+		display_runtime->num_scalers[PIPE_C] = 1;
 	}
 
 	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
 
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_sprites[pipe] = 4;
+			display_runtime->num_sprites[pipe] = 4;
 	else if (DISPLAY_VER(dev_priv) >= 11)
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_sprites[pipe] = 6;
+			display_runtime->num_sprites[pipe] = 6;
 	else if (DISPLAY_VER(dev_priv) == 10)
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_sprites[pipe] = 3;
+			display_runtime->num_sprites[pipe] = 3;
 	else if (IS_BROXTON(dev_priv)) {
 		/*
 		 * Skylake and Broxton currently don't expose the topmost plane as its
@@ -446,15 +452,15 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		 * down the line.
 		 */
 
-		runtime->num_sprites[PIPE_A] = 2;
-		runtime->num_sprites[PIPE_B] = 2;
-		runtime->num_sprites[PIPE_C] = 1;
+		display_runtime->num_sprites[PIPE_A] = 2;
+		display_runtime->num_sprites[PIPE_B] = 2;
+		display_runtime->num_sprites[PIPE_C] = 1;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_sprites[pipe] = 2;
+			display_runtime->num_sprites[pipe] = 2;
 	} else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
-			runtime->num_sprites[pipe] = 1;
+			display_runtime->num_sprites[pipe] = 1;
 	}
 
 	if (HAS_DISPLAY(dev_priv) &&
@@ -462,7 +468,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
 		drm_info(&dev_priv->drm, "Display not present, disabling\n");
 
-		runtime->pipe_mask = 0;
+		display_runtime->pipe_mask = 0;
 	}
 
 	if (HAS_DISPLAY(dev_priv) && IS_GRAPHICS_VER(dev_priv, 7, 8) &&
@@ -485,47 +491,47 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
 			drm_info(&dev_priv->drm,
 				 "Display fused off, disabling\n");
-			runtime->pipe_mask = 0;
+			display_runtime->pipe_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
-			runtime->pipe_mask &= ~BIT(PIPE_C);
-			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			display_runtime->pipe_mask &= ~BIT(PIPE_C);
+			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
-			runtime->pipe_mask &= ~BIT(PIPE_A);
-			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
-			runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
+			display_runtime->pipe_mask &= ~BIT(PIPE_A);
+			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
-			runtime->pipe_mask &= ~BIT(PIPE_B);
-			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			display_runtime->pipe_mask &= ~BIT(PIPE_B);
+			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
-			runtime->pipe_mask &= ~BIT(PIPE_C);
-			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			display_runtime->pipe_mask &= ~BIT(PIPE_C);
+			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 
 		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
-			runtime->pipe_mask &= ~BIT(PIPE_D);
-			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			display_runtime->pipe_mask &= ~BIT(PIPE_D);
+			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
-			runtime->has_hdcp = 0;
+			display_runtime->has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			runtime->fbc_mask = 0;
+			display_runtime->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
-			runtime->has_dmc = 0;
+			display_runtime->has_dmc = 0;
 
 		if (IS_DISPLAY_VER(dev_priv, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
-			runtime->has_dsc = 0;
+			display_runtime->has_dsc = 0;
 	}
 
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
@@ -542,13 +548,13 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 						   DRIVER_ATOMIC);
 		info->display = &no_display;
 
-		runtime->cpu_transcoder_mask = 0;
-		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
-		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
-		runtime->fbc_mask = 0;
-		runtime->has_hdcp = false;
-		runtime->has_dmc = false;
-		runtime->has_dsc = false;
+		display_runtime->cpu_transcoder_mask = 0;
+		memset(display_runtime->num_sprites, 0, sizeof(display_runtime->num_sprites));
+		memset(display_runtime->num_scalers, 0, sizeof(display_runtime->num_scalers));
+		display_runtime->fbc_mask = 0;
+		display_runtime->has_hdcp = false;
+		display_runtime->has_dmc = false;
+		display_runtime->has_dsc = false;
 	}
 
 	/* Disable nuclear pageflip by default on pre-g4x */
@@ -568,6 +574,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 {
 	struct intel_device_info *info;
 	struct intel_runtime_info *runtime;
+	struct intel_display_runtime_info *display_runtime;
 
 	/* Setup the write-once "constant" device info */
 	info = mkwrite_device_info(i915);
@@ -576,6 +583,10 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	/* Initialize initial runtime info from static const data and pdev. */
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
+	display_runtime = DISPLAY_RUNTIME_INFO(i915);
+	memcpy(display_runtime, &DISPLAY_INFO(i915)->__runtime,
+	       sizeof(*display_runtime));
+
 	runtime->device_id = device_id;
 }
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f212e02e6582..069291b3bd37 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -199,9 +199,6 @@ struct intel_runtime_info {
 	struct {
 		struct intel_ip_version ip;
 	} media;
-	struct {
-		struct intel_ip_version ip;
-	} display;
 
 	/*
 	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
@@ -229,21 +226,6 @@ struct intel_runtime_info {
 	u32 memory_regions; /* regions supported by the HW */
 
 	bool has_pooled_eu;
-
-	/* display */
-	struct {
-		u8 pipe_mask;
-		u8 cpu_transcoder_mask;
-
-		u8 num_sprites[I915_MAX_PIPES];
-		u8 num_scalers[I915_MAX_PIPES];
-
-		u8 fbc_mask;
-
-		bool has_hdcp;
-		bool has_dmc;
-		bool has_dsc;
-	};
 };
 
 struct intel_device_info {
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 84a6fe736a3b..8a9ff6227e53 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -166,8 +166,12 @@ void intel_step_init(struct drm_i915_private *i915)
 						       &RUNTIME_INFO(i915)->graphics.ip);
 		step.media_step = gmd_to_intel_step(i915,
 						    &RUNTIME_INFO(i915)->media.ip);
-		step.display_step = gmd_to_intel_step(i915,
-						      &RUNTIME_INFO(i915)->display.ip);
+		step.display_step = STEP_A0 + DISPLAY_RUNTIME_INFO(i915)->ip.step;
+		if (step.display_step >= STEP_FUTURE) {
+			drm_dbg(&i915->drm, "Using future display steppings\n");
+			step.display_step = STEP_FUTURE;
+		}
+
 		RUNTIME_INFO(i915)->step = step;
 
 		return;
-- 
2.40.0

