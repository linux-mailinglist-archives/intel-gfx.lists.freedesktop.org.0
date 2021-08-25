Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 082AE3F7411
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 13:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0F16E1D8;
	Wed, 25 Aug 2021 11:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85486E1D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 11:07:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217221583"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="217221583"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 04:07:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="456017894"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 04:07:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Lyude Paul <lyude@redhat.com>
Date: Wed, 25 Aug 2021 14:06:52 +0300
Message-Id: <9ff6e42e377bdb0c9349f50d9ea79671059633c7.1629888677.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629888677.git.jani.nikula@intel.com>
References: <cover.1629888677.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/panel: mass rename functions to
 have intel_panel_ prefix
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

Follow the usual naming conventions. Also pull HAS_GMCH() check to
intel_panel_fitting(). No functional changes.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c    |  9 +++-----
 drivers/gpu/drm/i915/display/intel_dvo.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  |  7 ++----
 drivers/gpu/drm/i915/display/intel_panel.c | 25 ++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_panel.h |  8 +++----
 drivers/gpu/drm/i915/display/vlv_dsi.c     |  7 ++----
 8 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6de268c98884..5a5e3689d027 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1652,9 +1652,9 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	int ret;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	intel_fixed_panel_mode(fixed_mode, adjusted_mode);
+	intel_panel_fixed_mode(fixed_mode, adjusted_mode);
 
-	ret = intel_pch_panel_fitting(pipe_config, conn_state);
+	ret = intel_panel_fitting(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d43e2850233f..7f8e8865048f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1738,7 +1738,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 							    adjusted_mode);
 
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
@@ -1751,13 +1751,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_audio = intel_conn_state->force_audio == HDMI_AUDIO_ON;
 
 	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
-		intel_fixed_panel_mode(intel_connector->panel.fixed_mode,
+		intel_panel_fixed_mode(intel_connector->panel.fixed_mode,
 				       adjusted_mode);
 
-		if (HAS_GMCH(dev_priv))
-			ret = intel_gmch_panel_fitting(pipe_config, conn_state);
-		else
-			ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 77419f8c05e9..86c903e9df60 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -265,7 +265,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	 * of the original mode.
 	 */
 	if (fixed_mode)
-		intel_fixed_panel_mode(fixed_mode, adjusted_mode);
+		intel_panel_fixed_mode(fixed_mode, adjusted_mode);
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index b04685bb6439..1bc33766ed39 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2210,7 +2210,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index df8238fefdd8..e9fb402708a7 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -442,7 +442,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	intel_fixed_panel_mode(intel_connector->panel.fixed_mode,
+	intel_panel_fixed_mode(intel_connector->panel.fixed_mode,
 			       adjusted_mode);
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
@@ -451,10 +451,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	if (HAS_PCH_SPLIT(dev_priv))
 		pipe_config->has_pch_encoder = true;
 
-	if (HAS_GMCH(dev_priv))
-		ret = intel_gmch_panel_fitting(pipe_config, conn_state);
-	else
-		ret = intel_pch_panel_fitting(pipe_config, conn_state);
+	ret = intel_panel_fitting(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index fb5684ddbc19..4804b6b86798 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -45,9 +45,8 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
-void
-intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
-		       struct drm_display_mode *adjusted_mode)
+void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
+			    struct drm_display_mode *adjusted_mode)
 {
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
@@ -179,8 +178,8 @@ intel_panel_vbt_fixed_mode(struct intel_connector *connector)
 }
 
 /* adjusted_mode has been preset to be the panel's fixed mode */
-int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
-			    const struct drm_connector_state *conn_state)
+static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
@@ -385,8 +384,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 	}
 }
 
-int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
+static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -460,6 +459,18 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
+int intel_panel_fitting(struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (HAS_GMCH(i915))
+		return gmch_panel_fitting(crtc_state, conn_state);
+	else
+		return pch_panel_fitting(crtc_state, conn_state);
+}
+
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 19ffa6175cab..f6af1a98290c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -24,12 +24,10 @@ void intel_panel_fini(struct intel_panel *panel);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
-void intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
+void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
 			    struct drm_display_mode *adjusted_mode);
-int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
-			    const struct drm_connector_state *conn_state);
-int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state);
+int intel_panel_fitting(struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state);
 struct drm_display_mode *
 intel_panel_edid_downclock_mode(struct intel_connector *connector,
 				const struct drm_display_mode *fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 76910c4b20e0..b0a2b6b96799 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -279,12 +279,9 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	if (fixed_mode) {
-		intel_fixed_panel_mode(fixed_mode, adjusted_mode);
+		intel_panel_fixed_mode(fixed_mode, adjusted_mode);
 
-		if (HAS_GMCH(dev_priv))
-			ret = intel_gmch_panel_fitting(pipe_config, conn_state);
-		else
-			ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
-- 
2.20.1

