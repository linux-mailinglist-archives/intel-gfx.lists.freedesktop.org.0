Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C574D6784
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA9F10E643;
	Fri, 11 Mar 2022 17:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E145F10E643
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019489; x=1678555489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=l7cUQApAV5ATSm7gH8Ixbi1nGG9n0UvoYdUMznS2GmU=;
 b=LpGvSas84VJVXwBE4M51CWRrgSM7IrVwY3KlyM72i5lF6zLuSiQ16J0l
 rmT0DKTv7qF1Zv/iBW4cjWy9k9ccRfSR6rPCLBWYwhUtqEbGvjT4VCy1z
 8TSp6RSLKDD5AgVOit93fXEML8NgXPJLrkFOw8FXGFQ95nrdkbucFpzW2
 0SD6CD+MCwJPrC/JMzXidB8J1otxzjr7xrQGtLxma5p+PM1WR9UUVyIxn
 p8Da4yo9xL9Du+YeaSa1h4YS8GIx41bN/UVoUBCgT6H76nLXJJWn6bHyt
 10wXQjmxb30di8LG9qq99kGcDshlgdHNVdUOPHRnUsD6w20oZy4pkxbdj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318835981"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="318835981"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="511444548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2022 09:24:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:18 +0200
Message-Id: <20220311172428.14685-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/16] drm/i915: Introduce intel_panel_{fixed,
 downclock}_mode()
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

Abstract away the details on where we store the fixed/downclock
modes, and also how we select them. Will be useful for static
DRRS (aka. allowing the user to select the refresh rate for the
panel).

We pass in the user requested mode to intel_panel_fixed_mode()
so that in the future it may try to match the refresh rate.
And intel_panel_downclock_mode() gets passed the adjusted_mode
we actually chose to use so that it may find a suitable lower
resresh rate variant.

v2: Hook it up for all encoders
    s/fixed_mode/adjusted_mode/ in intel_panel_downclock_mode() (Jani)
    Elaborate on the choice or arguments for the functions (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  7 +++++--
 drivers/gpu/drm/i915/display/intel_drrs.c  | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dsi.c   |  3 ++-
 drivers/gpu/drm/i915/display/intel_dvo.c   |  6 +++---
 drivers/gpu/drm/i915/display/intel_lvds.c  |  3 ++-
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_panel.h |  8 ++++++--
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 20 ++++++++++++--------
 8 files changed, 55 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 619546441eae..92a2651a71a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -918,8 +918,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = dev_priv->max_dotclk_freq;
@@ -934,6 +934,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
+	fixed_mode = intel_panel_fixed_mode(intel_connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		status = intel_panel_mode_valid(intel_connector, mode);
 		if (status != MODE_OK)
@@ -1797,6 +1798,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	const struct drm_display_mode *fixed_mode;
 	enum port port = encoder->port;
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct intel_digital_connector_state *intel_conn_state =
@@ -1823,7 +1825,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	else
 		pipe_config->has_audio = intel_conn_state->force_audio == HDMI_AUDIO_ON;
 
-	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
+	fixed_mode = intel_panel_fixed_mode(intel_connector, adjusted_mode);
+	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 4afbc903f169..2a58bf4cb6cd 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -48,7 +48,8 @@
  */
 
 static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config)
+			    const struct intel_crtc_state *pipe_config,
+			    const struct drm_display_mode *downclock_mode)
 {
 	const struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
@@ -64,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_psr)
 		return false;
 
-	return connector->panel.downclock_mode &&
+	return downclock_mode &&
 		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
 }
 
@@ -75,9 +76,11 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct drm_display_mode *downclock_mode =
+		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
 	int pixel_clock;
 
-	if (!can_enable_drrs(connector, pipe_config)) {
+	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
 			intel_zero_m_n(&pipe_config->dp_m2_n2);
 		return;
@@ -88,7 +91,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 
 	pipe_config->has_drrs = true;
 
-	pixel_clock = connector->panel.downclock_mode->clock;
+	pixel_clock = downclock_mode->clock;
 	if (pipe_config->splitter.enable)
 		pixel_clock /= pipe_config->splitter.link_count;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index a50422e03a7e..37f280b1f179 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -61,7 +61,8 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	const struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(intel_connector, mode);
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 	enum drm_mode_status status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 2eeb209afc64..0367e6a1bac7 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -226,7 +226,7 @@ intel_dvo_mode_valid(struct drm_connector *connector,
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(intel_connector);
 	const struct drm_display_mode *fixed_mode =
-		intel_connector->panel.fixed_mode;
+		intel_panel_fixed_mode(intel_connector, mode);
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 	int target_clock = mode->clock;
 
@@ -257,9 +257,9 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 {
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *fixed_mode =
-		intel_dvo->attached_connector->panel.fixed_mode;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(intel_dvo->attached_connector, adjusted_mode);
 
 	/*
 	 * If we have timings from the BIOS for the panel, put them in
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index dd7292d3c88e..3842417e06b0 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -389,7 +389,8 @@ intel_lvds_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(intel_connector, mode);
 	int max_pixclk = to_i915(connector->dev)->max_dotclk_freq;
 	enum drm_mode_status status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 6cd6d4fdd5ad..3ad246791da5 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -45,10 +45,25 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
+const struct drm_display_mode *
+intel_panel_fixed_mode(struct intel_connector *connector,
+		       const struct drm_display_mode *mode)
+{
+	return connector->panel.fixed_mode;
+}
+
+const struct drm_display_mode *
+intel_panel_downclock_mode(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode)
+{
+	return connector->panel.downclock_mode;
+}
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(connector, adjusted_mode);
 
 	if (!fixed_mode)
 		return 0;
@@ -508,7 +523,8 @@ enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	const struct drm_display_mode *fixed_mode =
+		intel_panel_fixed_mode(connector, mode);
 
 	if (!fixed_mode)
 		return MODE_OK;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index d50b3f7e9e58..7ce7e995853f 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -24,8 +24,12 @@ void intel_panel_fini(struct intel_panel *panel);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
 bool intel_panel_use_ssc(struct drm_i915_private *i915);
-void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
-			    struct drm_display_mode *adjusted_mode);
+const struct drm_display_mode *
+intel_panel_fixed_mode(struct intel_connector *connector,
+		       const struct drm_display_mode *mode);
+const struct drm_display_mode *
+intel_panel_downclock_mode(struct intel_connector *connector,
+			   const struct drm_display_mode *adjusted_mode);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 129f6619c3a1..04487b03b640 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -795,7 +795,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		const struct drm_display_mode *fixed_mode =
-			intel_sdvo_connector->base.panel.fixed_mode;
+			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
 
 		if (fixed_mode->hdisplay != args.width ||
 		    fixed_mode->vdisplay != args.height)
@@ -1331,6 +1331,8 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 							   adjusted_mode);
 		pipe_config->sdvo_tv_clock = true;
 	} else if (IS_LVDS(intel_sdvo_connector)) {
+		const struct drm_display_mode *fixed_mode =
+			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
 		int ret;
 
 		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
@@ -1338,8 +1340,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			return ret;
 
-		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
-							     intel_sdvo_connector->base.panel.fixed_mode))
+		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, fixed_mode))
 			return -EINVAL;
 
 		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
@@ -1461,7 +1462,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct intel_sdvo_connector_state *sdvo_state =
 		to_intel_sdvo_connector_state(conn_state);
-	const struct intel_sdvo_connector *intel_sdvo_connector =
+	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(conn_state->connector);
 	const struct drm_display_mode *mode = &crtc_state->hw.mode;
 	struct intel_sdvo *intel_sdvo = to_sdvo(intel_encoder);
@@ -1492,11 +1493,14 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 		return;
 
 	/* lvds has a special fixed output timing. */
-	if (IS_LVDS(intel_sdvo_connector))
-		intel_sdvo_get_dtd_from_mode(&output_dtd,
-					     intel_sdvo_connector->base.panel.fixed_mode);
-	else
+	if (IS_LVDS(intel_sdvo_connector)) {
+		const struct drm_display_mode *fixed_mode =
+			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+
+		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
+	} else {
 		intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
+	}
 	if (!intel_sdvo_set_output_timing(intel_sdvo, &output_dtd))
 		drm_info(&dev_priv->drm,
 			 "Setting output timings on %s failed\n",
-- 
2.34.1

