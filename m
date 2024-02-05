Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F7C849BB3
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E2410F68A;
	Mon,  5 Feb 2024 13:26:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wc9KwPat";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D70310F68A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 13:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707139584; x=1738675584;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vVllu8fsQYelJzElT6EpZaorjcBsbkCzILsbXHpHpkU=;
 b=Wc9KwPatFwteOK8YnE2LT12CzUWtOpeN1yD+X+C6I+Gg+CWNAQiIpKan
 nyntq2F/PfylN7qfTWaqJluV0WhSMTtITGc19EvYonfi+nYjkFzV031kV
 qFf1Qoowq+Gr/Ag/c2BxTjEzELy/1rgWqdndgMEfqdnjSXX0D0mwdev5u
 l9rTe1fsZY6nU8tyvnXZFkJSxXzDyaY6xn+0CRI7MyMzN75oa1cBkt7jz
 DI6xKKzt8hExmrlQTYz7ffvUrezYN6kIDdKfwOa+Z14pVmmHJxvZWIrjw
 MwhrdjBtyQKC0kGOd6eXHKsEutP0zzpo/1+wI8ujgM+1CYG+IIwjpLzTr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="687918"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="687918"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="921181"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:26:22 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Drew Davenport <ddavenport@chromium.org>
Subject: [PATCH] drm/i915/dp: Fix connector DSC HW state readout
Date: Mon,  5 Feb 2024 15:26:31 +0200
Message-Id: <20240205132631.1588577-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The DSC HW state of DP connectors is read out during driver loading and
system resume in intel_modeset_update_connector_atomic_state(). This
function is called for all connectors though and so the state of DSI
connectors will also get updated incorrectly, triggering a WARN there
wrt. the DSC decompression AUX device.

Fix the above by moving the DSC state readout to a new DP connector
specific sync_state() hook. This is anyway the logical place to update
the connector object's state vs. the connector's atomic state.

Fixes: b2608c6b3212 ("drm/i915/dp_mst: Enable MST DSC decompression for all streams")
Reported-by: Drew Davenport <ddavenport@chromium.org>
Closes: https://lore.kernel.org/all/Zb0q8IDVXS0HxJyj@chromium.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  7 +++++++
 drivers/gpu/drm/i915/display/intel_dp.c            | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h            |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 ++++++-------
 5 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ae2e8cff9d691..6e1ddd05bd504 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -609,6 +609,13 @@ struct intel_connector {
 	 * and active (i.e. dpms ON state). */
 	bool (*get_hw_state)(struct intel_connector *);
 
+	/*
+	 * Optional hook called during init/resume to sync any state
+	 * stored in the connector (eg. DSC state) wrt. the HW state.
+	 */
+	void (*sync_state)(struct intel_connector *connector,
+			   const struct intel_crtc_state *crtc_state);
+
 	/* Panel info for eDP and LVDS */
 	struct intel_panel panel;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab415f41924d7..f8b1aab7745fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5868,6 +5868,19 @@ intel_dp_connector_unregister(struct drm_connector *connector)
 	intel_connector_unregister(connector);
 }
 
+void intel_dp_connector_sync_state(struct intel_connector *connector,
+				   const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (crtc_state && crtc_state->dsc.compression_enable) {
+		drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
+		connector->dp.dsc_decompression_enabled = true;
+	} else {
+		connector->dp.dsc_decompression_enabled = false;
+	}
+}
+
 void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 530cc97bc42f4..f911dfab5fba9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -45,6 +45,8 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 int intel_dp_min_bpp(enum intel_output_format output_format);
 bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
+void intel_dp_connector_sync_state(struct intel_connector *connector,
+				   const struct intel_crtc_state *crtc_state);
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
 			      int link_rate, int lane_count);
 int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5fa25a5a36b55..130c6aab86b22 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1538,6 +1538,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 		return NULL;
 
 	intel_connector->get_hw_state = intel_dp_mst_get_hw_state;
+	intel_connector->sync_state = intel_dp_connector_sync_state;
 	intel_connector->mst_port = intel_dp;
 	intel_connector->port = port;
 	drm_dp_mst_get_port_malloc(port);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 94eece7f63be3..caeca3a8442c5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -318,12 +318,6 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 			const struct intel_crtc_state *crtc_state =
 				to_intel_crtc_state(crtc->base.state);
 
-			if (crtc_state->dsc.compression_enable) {
-				drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux);
-				connector->dp.dsc_decompression_enabled = true;
-			} else {
-				connector->dp.dsc_decompression_enabled = false;
-			}
 			conn_state->max_bpc = (crtc_state->pipe_bpp ?: 24) / 3;
 		}
 	}
@@ -775,8 +769,9 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
+		struct intel_crtc_state *crtc_state = NULL;
+
 		if (connector->get_hw_state(connector)) {
-			struct intel_crtc_state *crtc_state;
 			struct intel_crtc *crtc;
 
 			connector->base.dpms = DRM_MODE_DPMS_ON;
@@ -802,6 +797,10 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 			connector->base.dpms = DRM_MODE_DPMS_OFF;
 			connector->base.encoder = NULL;
 		}
+
+		if (connector->sync_state)
+			connector->sync_state(connector, crtc_state);
+
 		drm_dbg_kms(&i915->drm,
 			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
 			    connector->base.base.id, connector->base.name,
-- 
2.39.2

