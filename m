Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA8254F49C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 11:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F5710E65F;
	Fri, 17 Jun 2022 09:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D8710F88D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 09:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655459381; x=1686995381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+uAPFTphBg4olhMKIjtjDLqeIMLhPp/HaG1JLpyhvI=;
 b=DaHUNAwBFjS/xyzxxmDmSWF8+U+rjtQJX+A/po/bmaOfA0BKnbGQqqSw
 bty2hkpvQYxHhyTXdd5ej4qMoD+e1RIvBWNUiA7X4buPdi6QYKWmkEoBT
 yjQT0Kv3zy4PoAdoODdvu4dhUiJSxj/f3z5syhsxme+U0hhWBIuSiDy9O
 H+6m3isrVQ3XyFI8dswN8rwy8r0zn/QGjol6uGE6EI4m3TkYhOpxI5M/L
 /YA7RLxXhxGBLEdaWPkpm+P5C5yPO2eliHqtLOCRPRCchunDP5aVwEAzZ
 sgqZjOjBNFXAnoOU98k5Kf9s8CoYSkoxPt+hqKMbGuAQQkCykfo9f6Ytv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="262486078"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="262486078"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 02:49:40 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="590057274"
Received: from dfischbe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.67])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 02:49:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 12:48:17 +0300
Message-Id: <20220617094817.3466584-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220617094817.3466584-1-jani.nikula@intel.com>
References: <20220617094817.3466584-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: convert modeset setup to
 struct drm_i915_private *i915
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

Pass struct drm_i915_private * instead of struct drm_device *, and
rename dev_priv to i915.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
---
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    | 194 +++++++++---------
 .../drm/i915/display/intel_modeset_setup.h    |   4 +-
 3 files changed, 100 insertions(+), 102 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 710a51f14649..903226e2a626 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -838,7 +838,7 @@ __intel_display_resume(struct drm_i915_private *i915,
 	struct drm_crtc *crtc;
 	int i, ret;
 
-	intel_modeset_setup_hw_state(&i915->drm, ctx);
+	intel_modeset_setup_hw_state(i915, ctx);
 	intel_vga_redisable(i915);
 
 	if (!state)
@@ -8766,7 +8766,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	intel_setup_outputs(i915);
 
 	drm_modeset_lock_all(dev);
-	intel_modeset_setup_hw_state(dev, dev->mode_config.acquire_ctx);
+	intel_modeset_setup_hw_state(i915, dev->mode_config.acquire_ctx);
 	intel_acpi_assign_connector_fwnodes(i915);
 	drm_modeset_unlock_all(dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index c340f3393246..f0e04d3904c6 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -28,13 +28,13 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
 	struct intel_encoder *encoder;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
-		to_intel_bw_state(dev_priv->bw_obj.state);
+		to_intel_bw_state(i915->bw_obj.state);
 	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+		to_intel_cdclk_state(i915->cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
+		to_intel_dbuf_state(i915->dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
@@ -46,7 +46,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	if (!crtc_state->hw.active)
 		return;
 
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
 		const struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 
@@ -54,9 +54,9 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 			intel_plane_disable_noatomic(crtc, plane);
 	}
 
-	state = drm_atomic_state_alloc(&dev_priv->drm);
+	state = drm_atomic_state_alloc(&i915->drm);
 	if (!state) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "failed to disable [CRTC:%d:%s], out of memory",
 			    crtc->base.base.id, crtc->base.name);
 		return;
@@ -68,20 +68,20 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	temp_crtc_state = intel_atomic_get_crtc_state(state, crtc);
 	ret = drm_atomic_add_affected_connectors(state, &crtc->base);
 
-	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
+	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
 
-	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
+	i915->display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
 		    crtc->base.base.id, crtc->base.name);
 
 	crtc->active = false;
 	crtc->base.enabled = false;
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(&i915->drm,
 		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
 	crtc_state->uapi.active = false;
 	crtc_state->uapi.connector_mask = 0;
@@ -89,14 +89,14 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	intel_crtc_free_hw_state(crtc_state);
 	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
 
-	for_each_encoder_on_crtc(&dev_priv->drm, &crtc->base, encoder)
+	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
 		encoder->base.crtc = NULL;
 
 	intel_fbc_disable(crtc);
-	intel_update_watermarks(dev_priv);
+	intel_update_watermarks(i915);
 	intel_disable_shared_dpll(crtc_state);
 
-	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domains);
+	intel_display_power_put_all_in_set(i915, &crtc->enabled_power_domains);
 
 	cdclk_state->min_cdclk[pipe] = 0;
 	cdclk_state->min_voltage_level[pipe] = 0;
@@ -108,12 +108,12 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	bw_state->num_active_planes[pipe] = 0;
 }
 
-static void intel_modeset_update_connector_atomic_state(struct drm_device *dev)
+static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state = connector->base.state;
 		struct intel_encoder *encoder =
@@ -163,14 +163,14 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 }
 
 static void
-intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
+intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 {
 	struct intel_crtc *crtc;
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(i915) >= 4)
 		return;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		struct intel_crtc *plane_crtc;
@@ -182,11 +182,11 @@ intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
 		if (pipe == crtc->pipe)
 			continue;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
 			    plane->base.base.id, plane->base.name);
 
-		plane_crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		plane_crtc = intel_crtc_for_pipe(i915, pipe);
 		intel_plane_disable_noatomic(plane_crtc, plane);
 	}
 }
@@ -252,14 +252,14 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
 				struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 
 	if (crtc_state->hw.active) {
 		struct intel_plane *plane;
 
 		/* Disable everything but the primary plane */
-		for_each_intel_plane_on_crtc(dev, crtc, plane) {
+		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
 			const struct intel_plane_state *plane_state =
 				to_intel_plane_state(plane->base.state);
 
@@ -284,7 +284,7 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 
 static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	/*
 	 * Some SNB BIOSen (eg. ASUS K53SV) are known to misprogram
@@ -296,7 +296,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 	 * without several WARNs, but for now let's take the easy
 	 * road.
 	 */
-	return IS_SANDYBRIDGE(dev_priv) &&
+	return IS_SANDYBRIDGE(i915) &&
 		crtc_state->hw.active &&
 		crtc_state->shared_dpll &&
 		crtc_state->port_clock == 0;
@@ -304,7 +304,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 
 static void intel_sanitize_encoder(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector;
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
 	struct intel_crtc_state *crtc_state = crtc ?
@@ -319,7 +319,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		crtc_state->hw.active;
 
 	if (crtc_state && has_bogus_dpll_config(crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "BIOS has misprogrammed the hardware. Disabling pipe %c\n",
 			    pipe_name(crtc->pipe));
 		has_active_crtc = false;
@@ -327,7 +327,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 
 	connector = intel_encoder_find_connector(encoder);
 	if (connector && !has_active_crtc) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
 			    encoder->base.base.id,
 			    encoder->base.name);
@@ -340,7 +340,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 		if (crtc_state) {
 			struct drm_encoder *best_encoder;
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s] manually disabled\n",
 				    encoder->base.base.id,
 				    encoder->base.name);
@@ -374,17 +374,17 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 	/* notify opregion of the sanitized encoder state */
 	intel_opregion_notify_encoder(encoder, connector && has_active_crtc);
 
-	if (HAS_DDI(dev_priv))
+	if (HAS_DDI(i915))
 		intel_ddi_sanitize_encoder_pll_mapping(encoder);
 }
 
 /* FIXME read out full plane state for all planes */
-static void readout_plane_state(struct drm_i915_private *dev_priv)
+static void readout_plane_state(struct drm_i915_private *i915)
 {
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	for_each_intel_plane(&dev_priv->drm, plane) {
+	for_each_intel_plane(&i915->drm, plane) {
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		struct intel_crtc_state *crtc_state;
@@ -393,18 +393,18 @@ static void readout_plane_state(struct drm_i915_private *dev_priv)
 
 		visible = plane->get_hw_state(plane, &pipe);
 
-		crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(i915, pipe);
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
 		intel_set_plane_visible(crtc_state, plane_state, visible);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
 			    plane->base.base.id, plane->base.name,
 			    str_enabled_disabled(visible), pipe_name(pipe));
 	}
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -412,13 +412,12 @@ static void readout_plane_state(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void intel_modeset_readout_hw_state(struct drm_device *dev)
+static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+		to_intel_cdclk_state(i915->cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
+		to_intel_dbuf_state(i915->dbuf.obj.state);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
@@ -426,7 +425,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 	struct drm_connector_list_iter conn_iter;
 	u8 active_pipes = 0;
 
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -444,7 +443,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		if (crtc_state->hw.active)
 			active_pipes |= BIT(crtc->pipe);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] hw state readout: %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    str_enabled_disabled(crtc_state->hw.active));
@@ -453,15 +452,15 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 	cdclk_state->active_pipes = active_pipes;
 	dbuf_state->active_pipes = active_pipes;
 
-	readout_plane_state(dev_priv);
+	readout_plane_state(i915);
 
-	for_each_intel_encoder(dev, encoder) {
+	for_each_intel_encoder(&i915->drm, encoder) {
 		struct intel_crtc_state *crtc_state = NULL;
 
 		pipe = 0;
 
 		if (encoder->get_hw_state(encoder, &pipe)) {
-			crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			crtc = intel_crtc_for_pipe(i915, pipe);
 			crtc_state = to_intel_crtc_state(crtc->base.state);
 
 			encoder->base.crtc = &crtc->base;
@@ -474,7 +473,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 				/* encoder should read be linked to bigjoiner master */
 				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
 
-				for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
+				for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
 								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
 					struct intel_crtc_state *slave_crtc_state;
 
@@ -489,16 +488,16 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		if (encoder->sync_state)
 			encoder->sync_state(encoder, crtc_state);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
 			    encoder->base.base.id, encoder->base.name,
 			    str_enabled_disabled(encoder->base.crtc),
 			    pipe_name(pipe));
 	}
 
-	intel_dpll_readout_hw_state(dev_priv);
+	intel_dpll_readout_hw_state(i915);
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->get_hw_state(connector)) {
 			struct intel_crtc_state *crtc_state;
@@ -527,16 +526,16 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			connector->base.dpms = DRM_MODE_DPMS_OFF;
 			connector->base.encoder = NULL;
 		}
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
 			    connector->base.base.id, connector->base.name,
 			    str_enabled_disabled(connector->base.encoder));
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_bw_state *bw_state =
-			to_intel_bw_state(dev_priv->bw_obj.state);
+			to_intel_bw_state(i915->bw_obj.state);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
@@ -559,7 +558,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			intel_crtc_copy_hw_to_uapi_state(crtc_state);
 		}
 
-		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
 			const struct intel_plane_state *plane_state =
 				to_intel_plane_state(plane->base.state);
 
@@ -575,14 +574,14 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 			 * use plane->min_cdclk() :(
 			 */
 			if (plane_state->uapi.visible && plane->min_cdclk) {
-				if (crtc_state->double_wide || DISPLAY_VER(dev_priv) >= 10)
+				if (crtc_state->double_wide || DISPLAY_VER(i915) >= 10)
 					crtc_state->min_cdclk[plane->id] =
 						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
 				else
 					crtc_state->min_cdclk[plane->id] =
 						crtc_state->pixel_rate;
 			}
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
 				    plane->base.base.id, plane->base.name,
 				    crtc_state->min_cdclk[plane->id]);
@@ -590,7 +589,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 
 		if (crtc_state->hw.active) {
 			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
-			if (drm_WARN_ON(dev, min_cdclk < 0))
+			if (drm_WARN_ON(&i915->drm, min_cdclk < 0))
 				min_cdclk = 0;
 		}
 
@@ -603,11 +602,11 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 }
 
 static void
-get_encoder_power_domains(struct drm_i915_private *dev_priv)
+get_encoder_power_domains(struct drm_i915_private *i915)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(&i915->drm, encoder) {
 		struct intel_crtc_state *crtc_state;
 
 		if (!encoder->get_power_domains)
@@ -625,58 +624,57 @@ get_encoder_power_domains(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void intel_early_display_was(struct drm_i915_private *dev_priv)
+static void intel_early_display_was(struct drm_i915_private *i915)
 {
 	/*
 	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
 	 * Also known as Wa_14010480278.
 	 */
-	if (IS_DISPLAY_VER(dev_priv, 10, 12))
-		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
-			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
+	if (IS_DISPLAY_VER(i915, 10, 12))
+		intel_de_write(i915, GEN9_CLKGATE_DIS_0,
+			       intel_de_read(i915, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
 
-	if (IS_HASWELL(dev_priv)) {
+	if (IS_HASWELL(i915)) {
 		/*
 		 * WaRsPkgCStateDisplayPMReq:hsw
 		 * System hang if this isn't done before disabling all planes!
 		 */
-		intel_de_write(dev_priv, CHICKEN_PAR1_1,
-			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
+		intel_de_write(i915, CHICKEN_PAR1_1,
+			       intel_de_read(i915, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANES);
 	}
 
-	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv)) {
+	if (IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
 		/* Display WA #1142:kbl,cfl,cml */
-		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
+		intel_de_rmw(i915, CHICKEN_PAR1_1,
 			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
-		intel_de_rmw(dev_priv, CHICKEN_MISC_2,
+		intel_de_rmw(i915, CHICKEN_MISC_2,
 			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
 			     KBL_ARB_FILL_SPARE_14);
 	}
 }
 
-void intel_modeset_setup_hw_state(struct drm_device *dev,
+void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 				  struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
-	intel_early_display_was(dev_priv);
-	intel_modeset_readout_hw_state(dev);
+	intel_early_display_was(i915);
+	intel_modeset_readout_hw_state(i915);
 
 	/* HW state is read out, now we need to sanitize this mess. */
-	get_encoder_power_domains(dev_priv);
+	get_encoder_power_domains(i915);
 
-	intel_pch_sanitize(dev_priv);
+	intel_pch_sanitize(i915);
 
 	/*
 	 * intel_sanitize_plane_mapping() may need to do vblank
 	 * waits, so we need vblank interrupts restored beforehand.
 	 */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -688,14 +686,14 @@ void intel_modeset_setup_hw_state(struct drm_device *dev,
 			intel_crtc_vblank_on(crtc_state);
 	}
 
-	intel_fbc_sanitize(dev_priv);
+	intel_fbc_sanitize(i915);
 
-	intel_sanitize_plane_mapping(dev_priv);
+	intel_sanitize_plane_mapping(i915);
 
-	for_each_intel_encoder(dev, encoder)
+	for_each_intel_encoder(&i915->drm, encoder)
 		intel_sanitize_encoder(encoder);
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -703,34 +701,34 @@ void intel_modeset_setup_hw_state(struct drm_device *dev,
 		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
 	}
 
-	intel_modeset_update_connector_atomic_state(dev);
-
-	intel_dpll_sanitize_state(dev_priv);
-
-	if (IS_G4X(dev_priv)) {
-		g4x_wm_get_hw_state(dev_priv);
-		g4x_wm_sanitize(dev_priv);
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		vlv_wm_get_hw_state(dev_priv);
-		vlv_wm_sanitize(dev_priv);
-	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		skl_wm_get_hw_state(dev_priv);
-		skl_wm_sanitize(dev_priv);
-	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		ilk_wm_get_hw_state(dev_priv);
+	intel_modeset_update_connector_atomic_state(i915);
+
+	intel_dpll_sanitize_state(i915);
+
+	if (IS_G4X(i915)) {
+		g4x_wm_get_hw_state(i915);
+		g4x_wm_sanitize(i915);
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		vlv_wm_get_hw_state(i915);
+		vlv_wm_sanitize(i915);
+	} else if (DISPLAY_VER(i915) >= 9) {
+		skl_wm_get_hw_state(i915);
+		skl_wm_sanitize(i915);
+	} else if (HAS_PCH_SPLIT(i915)) {
+		ilk_wm_get_hw_state(i915);
 	}
 
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_power_domain_mask put_domains;
 
 		intel_modeset_get_crtc_power_domains(crtc_state, &put_domains);
-		if (drm_WARN_ON(dev, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
+		if (drm_WARN_ON(&i915->drm, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
 			intel_modeset_put_crtc_power_domains(crtc, &put_domains);
 	}
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 
-	intel_power_domains_sanitize_state(dev_priv);
+	intel_power_domains_sanitize_state(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.h b/drivers/gpu/drm/i915/display/intel_modeset_setup.h
index c29b34c6a7b0..3beff67b33d0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.h
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.h
@@ -6,10 +6,10 @@
 #ifndef __INTEL_MODESET_SETUP_H__
 #define __INTEL_MODESET_SETUP_H__
 
-struct drm_device;
+struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
 
-void intel_modeset_setup_hw_state(struct drm_device *dev,
+void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 				  struct drm_modeset_acquire_ctx *ctx);
 
 #endif /* __INTEL_MODESET_SETUP_H__ */
-- 
2.30.2

