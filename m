Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC87FA372
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17A410E135;
	Mon, 27 Nov 2023 14:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1708B10E08E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 14:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701096644; x=1732632644;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F6d4bOqCHJtKYm8czyOTF8B8FHYpDoeAehHJPAAYrI4=;
 b=Dc3QhEMxsIbe0Lw+1itS/uWR3x6nRA1QB35Q3idF9asEKFTY89drjzU4
 cEKYvcoAryMtlOhlDZQcGxzhas/3iryaokCXUyLCtnfTZ5egrNPhpbeCc
 XdHWinDWiYGgZLoobkCIhyhNrog110iisYJB5IPeB8Tk8zK8PLw+f10qw
 dM6+LZuRyfN9x/fJPnhjSC0a5loGGcfC09SOxRD5tlT1UR6kDT9Bbd34X
 Bn1RB541bRNZKfAOlKhWI0Ob2/qOrkfQmYZTuy0CxMmuq1tWFeOcYHXJY
 Sv/irFV+Cng8k9Uv7rEcjeCSjSQV7sFgp9apvYFTt6kiWgT+TvaJekTOC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="5968517"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5968517"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 06:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761614799"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="761614799"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2023 06:50:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Nov 2023 16:50:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 16:50:25 +0200
Message-ID: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Skip some timing checks on
 BXT/GLK DSI transcoders
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

Apparently some BXT/GLK systems have DSI panels whose timings
don't agree with the normal cpu transcoder hblank>=32 limitation.
This is perhaps fine as there are no specific hblank/etc. limits
listed for the BXT/GLK DSI transcoders.

Move those checks out from the global intel_mode_valid() into
into connector specific .mode_valid() hooks, skipping BXT/GLK
DSI connectors. We'll leave the basic [hv]display/[hv]total
checks in intel_mode_valid() as those seem like sensible upper
limits regardless of the transcoder used.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9720
Fixes: 8f4b1068e7fc ("drm/i915: Check some transcoder timing minimum limits")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       |  7 +++++++
 drivers/gpu/drm/i915/display/intel_crt.c     |  5 +++++
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ++++
 drivers/gpu/drm/i915/display/intel_dvo.c     |  6 ++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 ++++
 drivers/gpu/drm/i915/display/intel_lvds.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_tv.c      |  8 +++++++-
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 18 +++++++++++++++++-
 12 files changed, 79 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 481fcb650850..ac456a2275db 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1440,6 +1440,13 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
 						 struct drm_display_mode *mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	enum drm_mode_status status;
+
+	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	if (status != MODE_OK)
+		return status;
+
 	/* FIXME: DSC? */
 	return intel_dsi_mode_valid(connector, mode);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 0e33a0523a75..abaacea5c2cc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -348,8 +348,13 @@ intel_crt_mode_valid(struct drm_connector *connector,
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	int max_dotclk = dev_priv->max_dotclk_freq;
+	enum drm_mode_status status;
 	int max_clock;
 
+	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5cf162628b95..23b077f43614 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7734,6 +7734,16 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	    mode->vtotal > vtotal_max)
 		return MODE_V_ILLEGAL;
 
+	return MODE_OK;
+}
+
+enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *dev_priv,
+						     const struct drm_display_mode *mode)
+{
+	/*
+	 * Additional transcoder timing limits,
+	 * excluding BXT/GLK DSI transcoders.
+	 */
 	if (DISPLAY_VER(dev_priv) >= 5) {
 		if (mode->hdisplay < 64 ||
 		    mode->htotal - mode->hdisplay < 32)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 8548f49e3972..f4a0773f0fca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -402,6 +402,9 @@ enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
 				bool bigjoiner);
+enum drm_mode_status
+intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
+				const struct drm_display_mode *mode);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c6e3fe8b75d3..147f49bd12f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1227,6 +1227,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	enum drm_mode_status status;
 	bool dsc = false, bigjoiner = false;
 
+	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 63364c9602ef..0514f825baf5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1282,6 +1282,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
+	*status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	if (*status != MODE_OK)
+		return 0;
+
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN) {
 		*status = MODE_NO_DBLESCAN;
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 55d6743374bd..9111e9d46486 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -217,11 +217,17 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 		     struct drm_display_mode *mode)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
 	int max_dotclk = to_i915(connector->base.dev)->max_dotclk_freq;
 	int target_clock = mode->clock;
+	enum drm_mode_status status;
+
+	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	if (status != MODE_OK)
+		return status;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ab18cfc19c0a..39e4f5f7c817 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1983,6 +1983,10 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
 
+	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
 		clock *= 2;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 4b114fde57b1..958b6fd0d741 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -389,11 +389,16 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 		      struct drm_display_mode *mode)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
 	int max_pixclk = to_i915(connector->base.dev)->max_dotclk_freq;
 	enum drm_mode_status status;
 
+	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index bcb4959df70d..9218047495fb 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1931,13 +1931,19 @@ static enum drm_mode_status
 intel_sdvo_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, connector->state);
+	int max_dotclk = i915->max_dotclk_freq;
+	enum drm_mode_status status;
 	int clock = mode->clock;
 
+	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	if (status != MODE_OK)
+		return status;
+
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 31a79fdfc812..2ee4f0d95851 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -958,8 +958,14 @@ static enum drm_mode_status
 intel_tv_mode_valid(struct drm_connector *connector,
 		    struct drm_display_mode *mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+	int max_dotclk = i915->max_dotclk_freq;
+	enum drm_mode_status status;
+
+	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	if (status != MODE_OK)
+		return status;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index bda49734ca33..5bda97c96810 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1544,9 +1544,25 @@ static const struct drm_encoder_funcs intel_dsi_funcs = {
 	.destroy = intel_dsi_encoder_destroy,
 };
 
+static enum drm_mode_status vlv_dsi_mode_valid(struct drm_connector *connector,
+					       struct drm_display_mode *mode)
+{
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		enum drm_mode_status status;
+
+		status = intel_cpu_transcoder_mode_valid(i915, mode);
+		if (status != MODE_OK)
+			return status;
+	}
+
+	return intel_dsi_mode_valid(connector, mode);
+}
+
 static const struct drm_connector_helper_funcs intel_dsi_connector_helper_funcs = {
 	.get_modes = intel_dsi_get_modes,
-	.mode_valid = intel_dsi_mode_valid,
+	.mode_valid = vlv_dsi_mode_valid,
 	.atomic_check = intel_digital_connector_atomic_check,
 };
 
-- 
2.41.0

