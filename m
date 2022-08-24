Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FC359FB37
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F50B56D3;
	Wed, 24 Aug 2022 13:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C85FB50FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347033; x=1692883033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/SvzhtvSjtndNDAlLkWeXB4oYgITI3b7zROGmQRBd78=;
 b=m/9kpZHE9DV64r5vntdpgpBY1jTAyHat0Y3U+/hxM3IMK5COd2p5IjCi
 embzZ6Te0VKDza9oBQdzhoYtzcDtJgu8MfPtpTqB65hkhKE6Oy9xVNsyb
 uujx18n382C8j9FT4OpgxKAwK+XeykVwVGbpI6HmUKeOChQNxQ5ve4ceJ
 PsidtrBcXaj6B+EOdCWcn3YJOF7EbkluMjX5SU1Xrkthoeeicf4DkWyfq
 QKpTkvm6Ju0qWCdEUqPW8ehpYLxyHByzhaC/sqq3G1uTz9/+rGS0V8y5D
 Jai6VD46daTZ7D3Ra6A7ZTIwuHGdTNSNnlCe99JecbNcihmWITCfGA8ES Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294747803"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294747803"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="699070102"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:40 +0300
Message-Id: <b991dd25f8f539746c475d417691e0816ff6b24a.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/38] drm/i915: move wm to display.wm
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display watermark related members under drm_i915_private display
sub-struct.

It's a bit arbitrary when to define a named struct for grouping, but
clearly intel_wm is big enough to warrant a separate definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  38 ++++
 .../drm/i915/display/intel_display_debugfs.c  |  24 +--
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  37 ----
 drivers/gpu/drm/i915/intel_pm.c               | 166 +++++++++---------
 5 files changed, 134 insertions(+), 133 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 76e60cfd3ef7..72133893dfb1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -15,6 +15,7 @@
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
 #include "intel_gmbus.h"
+#include "intel_pm_types.h"
 
 struct drm_i915_private;
 struct i915_audio_component;
@@ -101,6 +102,42 @@ struct intel_dpll {
 	} ref_clks;
 };
 
+struct intel_wm {
+	/*
+	 * Raw watermark latency values:
+	 * in 0.1us units for WM0,
+	 * in 0.5us units for WM1+.
+	 */
+	/* primary */
+	u16 pri_latency[5];
+	/* sprite */
+	u16 spr_latency[5];
+	/* cursor */
+	u16 cur_latency[5];
+	/*
+	 * Raw watermark memory latency values
+	 * for SKL for all 8 levels
+	 * in 1us units.
+	 */
+	u16 skl_latency[8];
+
+	/* current hardware state */
+	union {
+		struct ilk_wm_values hw;
+		struct vlv_wm_values vlv;
+		struct g4x_wm_values g4x;
+	};
+
+	u8 max_level;
+
+	/*
+	 * Should be held around atomic WM register writing; also
+	 * protects * intel_crtc->wm.active and
+	 * crtc_state->wm.need_postvbl_update.
+	 */
+	struct mutex wm_mutex;
+};
+
 struct intel_display {
 	/* Display functions */
 	struct {
@@ -165,6 +202,7 @@ struct intel_display {
 	struct intel_audio audio;
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
+	struct intel_wm wm;
 };
 
 #endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e568590faa82..395facf6c1aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1428,9 +1428,9 @@ static int pri_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.pri_latency;
+		latencies = dev_priv->display.wm.pri_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -1443,9 +1443,9 @@ static int spr_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.spr_latency;
+		latencies = dev_priv->display.wm.spr_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -1458,9 +1458,9 @@ static int cur_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.cur_latency;
+		latencies = dev_priv->display.wm.cur_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -1551,9 +1551,9 @@ static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.pri_latency;
+		latencies = dev_priv->display.wm.pri_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -1566,9 +1566,9 @@ static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.spr_latency;
+		latencies = dev_priv->display.wm.spr_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -1581,9 +1581,9 @@ static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->wm.skl_latency;
+		latencies = dev_priv->display.wm.skl_latency;
 	else
-		latencies = dev_priv->wm.cur_latency;
+		latencies = dev_priv->display.wm.cur_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8af3d8119f08..c5bcf036c09e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -336,7 +336,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
 	mutex_init(&dev_priv->display.audio.mutex);
-	mutex_init(&dev_priv->wm.wm_mutex);
+	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->hdcp_comp_mutex);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1ef0ab73c329..c85119533a8d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -68,7 +68,6 @@
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
 #include "intel_pch.h"
-#include "intel_pm_types.h"
 #include "intel_runtime_pm.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
@@ -505,42 +504,6 @@ struct drm_i915_private {
 
 	u32 sagv_block_time_us;
 
-	struct {
-		/*
-		 * Raw watermark latency values:
-		 * in 0.1us units for WM0,
-		 * in 0.5us units for WM1+.
-		 */
-		/* primary */
-		u16 pri_latency[5];
-		/* sprite */
-		u16 spr_latency[5];
-		/* cursor */
-		u16 cur_latency[5];
-		/*
-		 * Raw watermark memory latency values
-		 * for SKL for all 8 levels
-		 * in 1us units.
-		 */
-		u16 skl_latency[8];
-
-		/* current hardware state */
-		union {
-			struct ilk_wm_values hw;
-			struct vlv_wm_values vlv;
-			struct g4x_wm_values g4x;
-		};
-
-		u8 max_level;
-
-		/*
-		 * Should be held around atomic WM register writing; also
-		 * protects * intel_crtc->wm.active and
-		 * crtc_state->wm.need_postvbl_update.
-		 */
-		struct mutex wm_mutex;
-	} wm;
-
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
 		u8 num_channels;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b63a1273df85..45300c4b433c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -468,13 +468,13 @@ bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
 {
 	bool ret;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	ret = _intel_set_memory_cxsr(dev_priv, enable);
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->wm.vlv.cxsr = enable;
+		dev_priv->display.wm.vlv.cxsr = enable;
 	else if (IS_G4X(dev_priv))
-		dev_priv->wm.g4x.cxsr = enable;
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+		dev_priv->display.wm.g4x.cxsr = enable;
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 
 	return ret;
 }
@@ -834,7 +834,7 @@ static bool is_enabling(int old, int new, int threshold)
 
 static int intel_wm_num_levels(struct drm_i915_private *dev_priv)
 {
-	return dev_priv->wm.max_level + 1;
+	return dev_priv->display.wm.max_level + 1;
 }
 
 static bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
@@ -1093,11 +1093,11 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 static void g4x_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
 	/* all latencies in usec */
-	dev_priv->wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
-	dev_priv->wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
-	dev_priv->wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
+	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
+	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
+	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
 
-	dev_priv->wm.max_level = G4X_WM_LEVEL_HPLL;
+	dev_priv->display.wm.max_level = G4X_WM_LEVEL_HPLL;
 }
 
 static int g4x_plane_fifo_size(enum plane_id plane_id, int level)
@@ -1150,7 +1150,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
-	unsigned int latency = dev_priv->wm.pri_latency[level] * 10;
+	unsigned int latency = dev_priv->display.wm.pri_latency[level] * 10;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
 	if (latency == 0)
@@ -1324,7 +1324,7 @@ static bool g4x_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (level > dev_priv->wm.max_level)
+	if (level > dev_priv->display.wm.max_level)
 		return false;
 
 	return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
@@ -1583,7 +1583,7 @@ static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 
 static void g4x_program_watermarks(struct drm_i915_private *dev_priv)
 {
-	struct g4x_wm_values *old_wm = &dev_priv->wm.g4x;
+	struct g4x_wm_values *old_wm = &dev_priv->display.wm.g4x;
 	struct g4x_wm_values new_wm = {};
 
 	g4x_merge_wm(dev_priv, &new_wm);
@@ -1609,10 +1609,10 @@ static void g4x_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.intermediate;
 	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 static void g4x_optimize_watermarks(struct intel_atomic_state *state,
@@ -1625,10 +1625,10 @@ static void g4x_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.optimal;
 	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 /* latency must be in 0.1us units. */
@@ -1650,15 +1650,15 @@ static unsigned int vlv_wm_method2(unsigned int pixel_rate,
 static void vlv_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
 	/* all latencies in usec */
-	dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
+	dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
 
-	dev_priv->wm.max_level = VLV_WM_LEVEL_PM2;
+	dev_priv->display.wm.max_level = VLV_WM_LEVEL_PM2;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
-		dev_priv->wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
+		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
+		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
 
-		dev_priv->wm.max_level = VLV_WM_LEVEL_DDR_DVFS;
+		dev_priv->display.wm.max_level = VLV_WM_LEVEL_DDR_DVFS;
 	}
 }
 
@@ -1672,7 +1672,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		&crtc_state->hw.pipe_mode;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
-	if (dev_priv->wm.pri_latency[level] == 0)
+	if (dev_priv->display.wm.pri_latency[level] == 0)
 		return USHRT_MAX;
 
 	if (!intel_wm_plane_visible(crtc_state, plane_state))
@@ -1693,7 +1693,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		wm = 63;
 	} else {
 		wm = vlv_wm_method2(pixel_rate, htotal, width, cpp,
-				    dev_priv->wm.pri_latency[level] * 10);
+				    dev_priv->display.wm.pri_latency[level] * 10);
 	}
 
 	return min_t(unsigned int, wm, USHRT_MAX);
@@ -2158,7 +2158,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 	struct intel_crtc *crtc;
 	int num_active_pipes = 0;
 
-	wm->level = dev_priv->wm.max_level;
+	wm->level = dev_priv->display.wm.max_level;
 	wm->cxsr = true;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -2197,7 +2197,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 
 static void vlv_program_watermarks(struct drm_i915_private *dev_priv)
 {
-	struct vlv_wm_values *old_wm = &dev_priv->wm.vlv;
+	struct vlv_wm_values *old_wm = &dev_priv->display.wm.vlv;
 	struct vlv_wm_values new_wm = {};
 
 	vlv_merge_wm(dev_priv, &new_wm);
@@ -2235,10 +2235,10 @@ static void vlv_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.intermediate;
 	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 static void vlv_optimize_watermarks(struct intel_atomic_state *state,
@@ -2251,10 +2251,10 @@ static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.optimal;
 	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 static void i965_update_wm(struct drm_i915_private *dev_priv)
@@ -2835,9 +2835,9 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
 				 const struct intel_plane_state *curstate,
 				 struct intel_wm_level *result)
 {
-	u16 pri_latency = dev_priv->wm.pri_latency[level];
-	u16 spr_latency = dev_priv->wm.spr_latency[level];
-	u16 cur_latency = dev_priv->wm.cur_latency[level];
+	u16 pri_latency = dev_priv->display.wm.pri_latency[level];
+	u16 spr_latency = dev_priv->display.wm.spr_latency[level];
+	u16 cur_latency = dev_priv->display.wm.cur_latency[level];
 
 	/* WM1+ latency values stored in 0.5us units */
 	if (level > 0) {
@@ -3061,18 +3061,18 @@ static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
 	 * The BIOS provided WM memory latency values are often
 	 * inadequate for high resolution displays. Adjust them.
 	 */
-	changed = ilk_increase_wm_latency(dev_priv, dev_priv->wm.pri_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->wm.spr_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->wm.cur_latency, 12);
+	changed = ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.pri_latency, 12);
+	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.spr_latency, 12);
+	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.cur_latency, 12);
 
 	if (!changed)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "WM latency values increased to avoid potential underruns\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
 }
 
 static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
@@ -3088,37 +3088,37 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 	 * interrupts only. To play it safe we disable LP3
 	 * watermarks entirely.
 	 */
-	if (dev_priv->wm.pri_latency[3] == 0 &&
-	    dev_priv->wm.spr_latency[3] == 0 &&
-	    dev_priv->wm.cur_latency[3] == 0)
+	if (dev_priv->display.wm.pri_latency[3] == 0 &&
+	    dev_priv->display.wm.spr_latency[3] == 0 &&
+	    dev_priv->display.wm.cur_latency[3] == 0)
 		return;
 
-	dev_priv->wm.pri_latency[3] = 0;
-	dev_priv->wm.spr_latency[3] = 0;
-	dev_priv->wm.cur_latency[3] = 0;
+	dev_priv->display.wm.pri_latency[3] = 0;
+	dev_priv->display.wm.spr_latency[3] = 0;
+	dev_priv->display.wm.cur_latency[3] = 0;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "LP3 watermarks disabled due to potential for lost interrupts\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
 }
 
 static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
-	intel_read_wm_latency(dev_priv, dev_priv->wm.pri_latency);
+	intel_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
 
-	memcpy(dev_priv->wm.spr_latency, dev_priv->wm.pri_latency,
-	       sizeof(dev_priv->wm.pri_latency));
-	memcpy(dev_priv->wm.cur_latency, dev_priv->wm.pri_latency,
-	       sizeof(dev_priv->wm.pri_latency));
+	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_latency,
+	       sizeof(dev_priv->display.wm.pri_latency));
+	memcpy(dev_priv->display.wm.cur_latency, dev_priv->display.wm.pri_latency,
+	       sizeof(dev_priv->display.wm.pri_latency));
 
-	intel_fixup_spr_wm_latency(dev_priv, dev_priv->wm.spr_latency);
-	intel_fixup_cur_wm_latency(dev_priv, dev_priv->wm.cur_latency);
+	intel_fixup_spr_wm_latency(dev_priv, dev_priv->display.wm.spr_latency);
+	intel_fixup_cur_wm_latency(dev_priv, dev_priv->display.wm.cur_latency);
 
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
 
 	if (DISPLAY_VER(dev_priv) == 6) {
 		snb_wm_latency_quirk(dev_priv);
@@ -3128,8 +3128,8 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 
 static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
-	intel_read_wm_latency(dev_priv, dev_priv->wm.skl_latency);
-	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->wm.skl_latency);
+	intel_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
+	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->display.wm.skl_latency);
 }
 
 static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
@@ -3386,7 +3386,7 @@ static unsigned int ilk_wm_lp_latency(struct drm_i915_private *dev_priv,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		return 2 * level;
 	else
-		return dev_priv->wm.pri_latency[level];
+		return dev_priv->display.wm.pri_latency[level];
 }
 
 static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
@@ -3538,7 +3538,7 @@ static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
 static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 			       unsigned int dirty)
 {
-	struct ilk_wm_values *previous = &dev_priv->wm.hw;
+	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
 	bool changed = false;
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
@@ -3572,7 +3572,7 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 				struct ilk_wm_values *results)
 {
-	struct ilk_wm_values *previous = &dev_priv->wm.hw;
+	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
 	unsigned int dirty;
 	u32 val;
 
@@ -3634,7 +3634,7 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
 		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
 
-	dev_priv->wm.hw = *results;
+	dev_priv->display.wm.hw = *results;
 }
 
 bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv)
@@ -4321,7 +4321,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	drm_WARN_ON(&dev_priv->drm, ret);
 
 	for (level = 0; level <= max_level; level++) {
-		unsigned int latency = dev_priv->wm.skl_latency[level];
+		unsigned int latency = dev_priv->display.wm.skl_latency[level];
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
@@ -5576,7 +5576,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 
 	for (level = 0; level <= max_level; level++) {
 		struct skl_wm_level *result = &levels[level];
-		unsigned int latency = dev_priv->wm.skl_latency[level];
+		unsigned int latency = dev_priv->display.wm.skl_latency[level];
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
@@ -5596,7 +5596,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	unsigned int latency = 0;
 
 	if (dev_priv->sagv_block_time_us)
-		latency = dev_priv->sagv_block_time_us + dev_priv->wm.skl_latency[0];
+		latency = dev_priv->sagv_block_time_us + dev_priv->display.wm.skl_latency[0];
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
@@ -6458,10 +6458,10 @@ static void ilk_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.intermediate;
 	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 static void ilk_optimize_watermarks(struct intel_atomic_state *state,
@@ -6474,10 +6474,10 @@ static void ilk_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.optimal;
 	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
@@ -6677,7 +6677,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct ilk_wm_values *hw = &dev_priv->wm.hw;
+	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
@@ -6825,7 +6825,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 
 void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct g4x_wm_values *wm = &dev_priv->wm.g4x;
+	struct g4x_wm_values *wm = &dev_priv->display.wm.g4x;
 	struct intel_crtc *crtc;
 
 	g4x_read_wm_values(dev_priv, wm);
@@ -6919,7 +6919,7 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
@@ -6967,12 +6967,12 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	g4x_program_watermarks(dev_priv);
 
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct vlv_wm_values *wm = &dev_priv->wm.vlv;
+	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
 
@@ -7006,7 +7006,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			drm_dbg_kms(&dev_priv->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-			dev_priv->wm.max_level = VLV_WM_LEVEL_PM5;
+			dev_priv->display.wm.max_level = VLV_WM_LEVEL_PM5;
 		} else {
 			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
@@ -7075,7 +7075,7 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->wm.wm_mutex);
+	mutex_lock(&dev_priv->display.wm.wm_mutex);
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
@@ -7116,7 +7116,7 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	vlv_program_watermarks(dev_priv);
 
-	mutex_unlock(&dev_priv->wm.wm_mutex);
+	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
 /*
@@ -7137,7 +7137,7 @@ static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct ilk_wm_values *hw = &dev_priv->wm.hw;
+	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
 	struct intel_crtc *crtc;
 
 	ilk_init_lp_watermarks(dev_priv);
@@ -8231,10 +8231,10 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
 
-		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv->wm.pri_latency[1] &&
-		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
-		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
-		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
+		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv->display.wm.pri_latency[1] &&
+		     dev_priv->display.wm.spr_latency[1] && dev_priv->display.wm.cur_latency[1]) ||
+		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->display.wm.pri_latency[0] &&
+		     dev_priv->display.wm.spr_latency[0] && dev_priv->display.wm.cur_latency[0])) {
 			dev_priv->display.funcs.wm = &ilk_wm_funcs;
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
-- 
2.34.1

