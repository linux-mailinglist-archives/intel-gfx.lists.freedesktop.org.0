Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5696C6AC6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D4E10EACD;
	Thu, 23 Mar 2023 14:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE1910EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581269; x=1711117269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RPenNow5MGIhp+4fsbk/BM8p9AQJY2ugZyKHuSgVYXg=;
 b=SlUPEABW7oVNy76kSbZQqVwB7Qkh8AXS1TFyLYudz64tEi78F33h3b/Q
 rZNCMgtnbp6gOmSW1iWPB3qejgAnAr5xwVR9XFQrHwcMBZH1aAhpQI5pC
 FxDFN4MpsjZY7dEuPbfa4LUK0yvkVY6dCQZV5UDTVSV+9UXB5bBMQHSdb
 Iwos20dWjKdNvWyyHcTGAoKr8PaS8Y1fJD6/OMFtFa0H74DiLMEd16ypb
 dHSwIDdkO1b6LlutBYCCp4TCbLQDoZ4Nmueic5QV2TWdmx0OW8bmOwMa4
 5Zz5lcgkcVjUGbJGJ/GNiAgpdCiOK1ng/UEWnTNrnABZ/S5A427sZakm6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892359"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892359"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722771"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722771"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:35 +0200
Message-Id: <20230323142035.1432621-30-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 29/29] drm/i915: Remove the encoder
 update_prepare()/complete() hooks
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

The encoder update_prepare()/complete() hooks were added to hold a
TC port link reference for all outputs in the atomic state around the
whole modeset enable sequence - thus locking the ports' TC mode - and
set the TBT/DP-alt PLL type corresponding to the current TC mode.

Since nothing depends on the PLL selection before/after then encoder's
pre_pll_enable/post_pll_disable hooks are called, the above steps can be
moved to these hooks, so do that and remove the
update_prepare()/complete() hooks.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 49 +++---------
 drivers/gpu/drm/i915/display/intel_display.c  | 78 -------------------
 .../drm/i915/display/intel_display_types.h    |  6 --
 3 files changed, 12 insertions(+), 121 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 62bd4196dc464..dc294717bcdf4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3060,39 +3060,6 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
 	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
 }
 
-static void
-intel_ddi_update_prepare(struct intel_atomic_state *state,
-			 struct intel_encoder *encoder,
-			 struct intel_crtc *crtc)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state =
-		crtc ? intel_atomic_get_new_crtc_state(state, crtc) : NULL;
-	int required_lanes = crtc_state ? crtc_state->lane_count : 1;
-
-	drm_WARN_ON(state->base.dev, crtc && crtc->active);
-
-	intel_tc_port_get_link(enc_to_dig_port(encoder),
-		               required_lanes);
-	if (crtc_state && crtc_state->hw.active) {
-		struct intel_crtc *slave_crtc;
-
-		intel_update_active_dpll(state, crtc, encoder);
-
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-			intel_update_active_dpll(state, slave_crtc, encoder);
-	}
-}
-
-static void
-intel_ddi_update_complete(struct intel_atomic_state *state,
-			  struct intel_encoder *encoder,
-			  struct intel_crtc *crtc)
-{
-	intel_tc_port_put_link(enc_to_dig_port(encoder));
-}
-
 static void
 intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 			 struct intel_encoder *encoder,
@@ -3104,9 +3071,20 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
 
-	if (is_tc_port)
+	if (is_tc_port) {
+		struct intel_crtc *master_crtc =
+			to_intel_crtc(crtc_state->uapi.crtc);
+		struct intel_crtc *slave_crtc;
+
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
 
+		intel_update_active_dpll(state, master_crtc, encoder);
+
+		for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
+						 intel_crtc_bigjoiner_slave_pipes(crtc_state))
+			intel_update_active_dpll(state, slave_crtc, encoder);
+	}
+
 	main_link_aux_power_domain_get(dig_port, crtc_state);
 
 	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
@@ -4552,9 +4530,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 		if (intel_tc_port_init(dig_port, is_legacy) < 0)
 			goto err;
-
-		encoder->update_prepare = intel_ddi_update_prepare;
-		encoder->update_complete = intel_ddi_update_complete;
 	}
 
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0e171f66d6983..cdf2c33cd544d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1320,36 +1320,11 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 	intel_frontbuffer_flip(dev_priv, fb_bits);
 }
 
-/*
- * intel_connector_primary_encoder - get the primary encoder for a connector
- * @connector: connector for which to return the encoder
- *
- * Returns the primary encoder for a connector. There is a 1:1 mapping from
- * all connectors to their encoder, except for DP-MST connectors which have
- * both a virtual and a primary encoder. These DP-MST primary encoders can be
- * pointed to by as many DP-MST connectors as there are pipes.
- */
-static struct intel_encoder *
-intel_connector_primary_encoder(struct intel_connector *connector)
-{
-	struct intel_encoder *encoder;
-
-	if (connector->mst_port)
-		return &dp_to_dig_port(connector->mst_port)->base;
-
-	encoder = intel_attached_encoder(connector);
-	drm_WARN_ON(connector->base.dev, !encoder);
-
-	return encoder;
-}
-
 static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	struct drm_connector_state *new_conn_state;
-	struct drm_connector *connector;
 	int i;
 
 	/*
@@ -1365,57 +1340,6 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 			new_crtc_state->dpll_hw_state = old_crtc_state->dpll_hw_state;
 		}
 	}
-
-	if (!state->modeset)
-		return;
-
-	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
-					i) {
-		struct intel_connector *intel_connector;
-		struct intel_encoder *encoder;
-		struct intel_crtc *crtc;
-
-		if (!intel_connector_needs_modeset(state, connector))
-			continue;
-
-		intel_connector = to_intel_connector(connector);
-		encoder = intel_connector_primary_encoder(intel_connector);
-		if (!encoder->update_prepare)
-			continue;
-
-		crtc = new_conn_state->crtc ?
-			to_intel_crtc(new_conn_state->crtc) : NULL;
-		encoder->update_prepare(state, encoder, crtc);
-	}
-}
-
-static void intel_encoders_update_complete(struct intel_atomic_state *state)
-{
-	struct drm_connector_state *new_conn_state;
-	struct drm_connector *connector;
-	int i;
-
-	if (!state->modeset)
-		return;
-
-	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
-					i) {
-		struct intel_connector *intel_connector;
-		struct intel_encoder *encoder;
-		struct intel_crtc *crtc;
-
-		if (!intel_connector_needs_modeset(state, connector))
-			continue;
-
-		intel_connector = to_intel_connector(connector);
-		encoder = intel_connector_primary_encoder(intel_connector);
-		if (!encoder->update_complete)
-			continue;
-
-		crtc = new_conn_state->crtc ?
-			to_intel_crtc(new_conn_state->crtc) : NULL;
-		encoder->update_complete(state, encoder, crtc);
-	}
 }
 
 static void intel_encoders_pre_pll_enable(struct intel_atomic_state *state,
@@ -7439,8 +7363,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
-	intel_encoders_update_complete(state);
-
 	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ce24e58b2a825..fbdc94ad1d081 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -170,9 +170,6 @@ struct intel_encoder {
 	int (*compute_config_late)(struct intel_encoder *,
 				   struct intel_crtc_state *,
 				   struct drm_connector_state *);
-	void (*update_prepare)(struct intel_atomic_state *,
-			       struct intel_encoder *,
-			       struct intel_crtc *);
 	void (*pre_pll_enable)(struct intel_atomic_state *,
 			       struct intel_encoder *,
 			       const struct intel_crtc_state *,
@@ -185,9 +182,6 @@ struct intel_encoder {
 		       struct intel_encoder *,
 		       const struct intel_crtc_state *,
 		       const struct drm_connector_state *);
-	void (*update_complete)(struct intel_atomic_state *,
-				struct intel_encoder *,
-				struct intel_crtc *);
 	void (*disable)(struct intel_atomic_state *,
 			struct intel_encoder *,
 			const struct intel_crtc_state *,
-- 
2.37.1

