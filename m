Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C0E37BE40
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D826E07B;
	Wed, 12 May 2021 13:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7E96E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 13:31:25 +0000 (UTC)
IronPort-SDR: fBdZ9eotqh8wOQaED4mMd0YjIZ86s56LAoIH0VZCP6Ur6KKqpcm5pIWbgsRI5bt08gRslai0ea
 ih6eZjUDhRCg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="260954784"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="260954784"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:31:13 -0700
IronPort-SDR: oxYVk/8W/PTqlQHb1EAeIoobF8Cs+L5OQhYmleT+mu4K6IQg1arhfGST8nUXGCEHAso15x08SU
 dGagBnS6XPPQ==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="392743400"
Received: from olovaszi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:31:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 May 2021 16:30:46 +0300
Message-Id: <b145dbc20c3051f18795ed72848cba02503a2475.1620825897.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1620825897.git.jani.nikula@intel.com>
References: <cover.1620825897.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions. Also pull HAS_GMCH() check to
intel_panel_fitting(). No functional changes.

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
index da1b00859f3b..024b2e2107d5 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1594,9 +1594,9 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	int ret;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	intel_fixed_panel_mode(fixed_mode, adjusted_mode);
+	intel_panel_fixed_mode(fixed_mode, adjusted_mode);
 
-	ret = intel_pch_panel_fitting(pipe_config, conn_state);
+	ret = intel_panel_fitting(pipe_config, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index efb7a249393c..5624f3fad859 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1652,7 +1652,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 							    adjusted_mode);
 
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
@@ -1665,13 +1665,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
index e9b646f81af0..3db107ec45f9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2189,7 +2189,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 
 	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_pch_panel_fitting(pipe_config, conn_state);
+		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 0f7b1a6d09d4..2afcea711cb9 100644
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
index 611e32421353..f20ca73ff20a 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -37,9 +37,8 @@
 #include "intel_display_types.h"
 #include "intel_panel.h"
 
-void
-intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
-		       struct drm_display_mode *adjusted_mode)
+void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
+			    struct drm_display_mode *adjusted_mode)
 {
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
@@ -171,8 +170,8 @@ intel_panel_vbt_fixed_mode(struct intel_connector *connector)
 }
 
 /* adjusted_mode has been preset to be the panel's fixed mode */
-int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
-			    const struct drm_connector_state *conn_state)
+static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
+			     const struct drm_connector_state *conn_state)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
@@ -377,8 +376,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 	}
 }
 
-int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
-			     const struct drm_connector_state *conn_state)
+static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -452,6 +451,18 @@ int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
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
index ae684e8082cb..544202546934 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -22,12 +22,10 @@ int intel_panel_init(struct intel_panel *panel,
 void intel_panel_fini(struct intel_panel *panel);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
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
index af50115fd272..99ba4a48fc14 100644
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
