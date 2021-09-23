Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B806D41664B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83AA89E06;
	Thu, 23 Sep 2021 20:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FCD489E06
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211171945"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="211171945"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="435932105"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 23 Sep 2021 13:01:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:09 +0300
Message-Id: <20210923200109.4459-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Drop pointless fixed_mode checks
 from dsi code
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

We don't support dsi displays without a fixed mode, so drop
all the pointless checks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.c | 15 ++++-----
 drivers/gpu/drm/i915/display/vlv_dsi.c   | 41 ++++++++++--------------
 2 files changed, 23 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 6f1171112a3a..6b0301ba046e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -61,22 +61,19 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	const struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+	enum drm_mode_status status;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
-	if (fixed_mode) {
-		enum drm_mode_status status;
+	status = intel_panel_mode_valid(intel_connector, mode);
+	if (status != MODE_OK)
+		return status;
 
-		status = intel_panel_mode_valid(intel_connector, mode);
-		if (status != MODE_OK)
-			return status;
-
-		if (fixed_mode->clock > max_dotclk)
-			return MODE_CLOCK_HIGH;
-	}
+	if (fixed_mode->clock > max_dotclk)
+		return MODE_CLOCK_HIGH;
 
 	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 260e852245e9..081b772bfe10 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -271,22 +271,19 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	struct intel_dsi *intel_dsi = container_of(encoder, struct intel_dsi,
 						   base);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
-	const struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int ret;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	if (fixed_mode) {
-		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
-		if (ret)
-			return ret;
+	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	if (ret)
+		return ret;
 
-		ret = intel_panel_fitting(pipe_config, conn_state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_panel_fitting(pipe_config, conn_state);
+	if (ret)
+		return ret;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
@@ -1633,25 +1630,21 @@ static const struct drm_connector_funcs intel_dsi_connector_funcs = {
 static void vlv_dsi_add_properties(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	u32 allowed_scalers;
 
-	if (connector->panel.fixed_mode) {
-		u32 allowed_scalers;
+	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
+	if (!HAS_GMCH(dev_priv))
+		allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
 
-		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
-		if (!HAS_GMCH(dev_priv))
-			allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
+	drm_connector_attach_scaling_mode_property(&connector->base,
+						   allowed_scalers);
 
-		drm_connector_attach_scaling_mode_property(&connector->base,
-								allowed_scalers);
+	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
-		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
-
-		drm_connector_set_panel_orientation_with_quirk(
-				&connector->base,
-				intel_dsi_get_panel_orientation(connector),
-				connector->panel.fixed_mode->hdisplay,
-				connector->panel.fixed_mode->vdisplay);
-	}
+	drm_connector_set_panel_orientation_with_quirk(&connector->base,
+						       intel_dsi_get_panel_orientation(connector),
+						       connector->panel.fixed_mode->hdisplay,
+						       connector->panel.fixed_mode->vdisplay);
 }
 
 #define NS_KHZ_RATIO		1000000
-- 
2.32.0

