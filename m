Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FB89C0FC4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 21:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D9910E8D4;
	Thu,  7 Nov 2024 20:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYnhGWKM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35A6110E8DD;
 Thu,  7 Nov 2024 20:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731011565; x=1762547565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rkNgcobDm8U5HO5LA1NSpWQfn8BWhWqY6sHCkhqLo58=;
 b=CYnhGWKMVAd9+5kAhPmt/pQiesCtmqI4lg9Uo94Gjip41UabbolVl80Z
 y+ZBd2ZY/OCb2cWBsoHv/nXzf7pKnsjZBmmh9IwsO53xGtQ/BJWckAhH6
 wnYrok9k+1mCc3WZHdBusr7qUUco/k5qVd5BYzjLrNalrZtYP1qOjKagk
 owa8/jcY1ixnGyJeOk/KUAxXyQDZ2OoJctQdc48zW+b6816FcYoYs3Py7
 Y00z0ysg9YaMhbsvbCoTyCIVneB4tGTxig3CKlJG5viO6AU3MH08xeQq4
 04/xoX69u/k4khzZZPp4kJU8QMQXH7qE2UZCs074qQVUNOngLNxICSVDT g==;
X-CSE-ConnectionGUID: BO463F56SMO0bkdYpZfMqg==
X-CSE-MsgGUID: DdcOi4x3R3ixReAxGi4WZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41439198"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41439198"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:44 -0800
X-CSE-ConnectionGUID: enXWOxURQsSZqgTa47/t/Q==
X-CSE-MsgGUID: 0rvmvzlEQbqBfINqUQA84A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="122738379"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 12:32:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 3/8] drm/i915/mst: introduce to_primary_encoder() and
 to_primary_dp()
Date: Thu,  7 Nov 2024 22:32:16 +0200
Message-Id: <792e4b8ba6b03ed24d143a2aa31dc2c63ed47957.1731011435.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731011435.git.jani.nikula@intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add helpers to_primary_encoder() and to_primary_dp() to convert fake MST
encoder pointers to primary encoder and DP pointers, respectively, and
use them.

The main point is to highlight the primary encoder and DP usage. Very
few places actually need the struct intel_dp_mst_encoder pointer, or the
primary struct intel_digital_port, so ditch them where possible for
clarity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 98 +++++++++++----------
 1 file changed, 52 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7b03ec571464..558cf13b977f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -53,6 +53,24 @@
 #include "intel_vdsc.h"
 #include "skl_scaler.h"
 
+/* From fake MST encoder to primary encoder */
+static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
+{
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
+	struct intel_digital_port *dig_port = intel_mst->primary;
+
+	return &dig_port->base;
+}
+
+/* From fake MST encoder to primary DP */
+static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
+{
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
+	struct intel_digital_port *dig_port = intel_mst->primary;
+
+	return &dig_port->dp;
+}
+
 static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
 				    bool dsc)
 {
@@ -171,8 +189,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						bool dsc)
 {
 	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct drm_dp_mst_topology_state *mst_state;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -422,8 +439,7 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 				     struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
 	struct drm_dp_mst_topology_state *topology_state;
 	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
@@ -581,8 +597,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
@@ -855,8 +870,7 @@ static int intel_dp_mst_compute_config_late(struct intel_encoder *encoder,
 					    struct drm_connector_state *conn_state)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
 	/* lowest numbered transcoder will be designated master */
 	crtc_state->mst_master_transcoder =
@@ -970,8 +984,7 @@ static void wait_for_act_sent(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
 	if (intel_de_wait_for_set(i915, dp_tp_status_reg(encoder, crtc_state),
 				  DP_TP_STATUS_ACT_SENT, 1))
@@ -986,8 +999,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 				 const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -1010,8 +1022,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_dp_mst_topology_state *old_mst_state =
@@ -1080,8 +1092,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * BSpec 4287: disable DIP after the transcoder is disabled and before
 	 * the transcoder clock select is set to none.
 	 */
-	intel_dp_set_infoframes(&dig_port->base, false,
-				old_crtc_state, NULL);
+	intel_dp_set_infoframes(primary_encoder, false, old_crtc_state, NULL);
 	/*
 	 * From TGL spec: "If multi-stream slave transcoder: Configure
 	 * Transcoder Clock Select to direct no clock to the transcoder"
@@ -1095,8 +1106,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_mst->connector = NULL;
 	if (last_mst_stream)
-		dig_port->base.post_disable(state, &dig_port->base,
-						  old_crtc_state, NULL);
+		primary_encoder->post_disable(state, primary_encoder,
+					      old_crtc_state, NULL);
 
 	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
@@ -1107,13 +1118,12 @@ static void intel_mst_post_pll_disable_dp(struct intel_atomic_state *state,
 					  const struct intel_crtc_state *old_crtc_state,
 					  const struct drm_connector_state *old_conn_state)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
 	if (intel_dp->active_mst_links == 0 &&
-	    dig_port->base.post_pll_disable)
-		dig_port->base.post_pll_disable(state, &dig_port->base, old_crtc_state, old_conn_state);
+	    primary_encoder->post_pll_disable)
+		primary_encoder->post_pll_disable(state, primary_encoder, old_crtc_state, old_conn_state);
 }
 
 static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
@@ -1121,19 +1131,18 @@ static void intel_mst_pre_pll_enable_dp(struct intel_atomic_state *state,
 					const struct intel_crtc_state *pipe_config,
 					const struct drm_connector_state *conn_state)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
 	if (intel_dp->active_mst_links == 0)
-		dig_port->base.pre_pll_enable(state, &dig_port->base,
-						    pipe_config, NULL);
+		primary_encoder->pre_pll_enable(state, primary_encoder,
+						pipe_config, NULL);
 	else
 		/*
 		 * The port PLL state needs to get updated for secondary
 		 * streams as for the primary stream.
 		 */
-		intel_ddi_update_active_dpll(state, &dig_port->base,
+		intel_ddi_update_active_dpll(state, primary_encoder,
 					     to_intel_crtc(pipe_config->uapi.crtc));
 }
 
@@ -1170,8 +1179,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -1201,8 +1210,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	intel_dp_sink_enable_decompression(state, connector, pipe_config);
 
 	if (first_mst_stream) {
-		dig_port->base.pre_enable(state, &dig_port->base,
-						pipe_config, NULL);
+		primary_encoder->pre_enable(state, primary_encoder,
+					    pipe_config, NULL);
 
 		intel_mst_reprobe_topology(intel_dp, pipe_config);
 	}
@@ -1212,11 +1221,11 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	ret = drm_dp_add_payload_part1(&intel_dp->mst_mgr, mst_state,
 				       drm_atomic_get_mst_payload_state(mst_state, connector->port));
 	if (ret < 0)
-		intel_dp_queue_modeset_retry_for_link(state, &dig_port->base, pipe_config);
+		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
 
 	/*
 	 * Before Gen 12 this is not done as part of
-	 * dig_port->base.pre_enable() and should be done here. For
+	 * primary_encoder->pre_enable() and should be done here. For
 	 * Gen 12+ the step in which this should be done is different for the
 	 * first MST stream, so it's done on the DDI for the first stream and
 	 * here for the following ones.
@@ -1227,7 +1236,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 13 && !first_mst_stream)
 		intel_ddi_config_transcoder_func(encoder, pipe_config);
 
-	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
+	intel_dsc_dp_pps_write(primary_encoder, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
@@ -1270,9 +1279,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 				const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
-	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_dp_mst_topology_state *mst_state =
@@ -1316,7 +1324,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 				       drm_atomic_get_mst_payload_state(mst_state,
 									connector->port));
 	if (ret < 0)
-		intel_dp_queue_modeset_retry_for_link(state, &dig_port->base, pipe_config);
+		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
@@ -1350,19 +1358,17 @@ static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
 static void intel_dp_mst_enc_get_config(struct intel_encoder *encoder,
 					struct intel_crtc_state *pipe_config)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
 
-	dig_port->base.get_config(&dig_port->base, pipe_config);
+	primary_encoder->get_config(primary_encoder, pipe_config);
 }
 
 static bool intel_dp_mst_initial_fastset_check(struct intel_encoder *encoder,
 					       struct intel_crtc_state *crtc_state)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
-	struct intel_digital_port *dig_port = intel_mst->primary;
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
 
-	return intel_dp_initial_fastset_check(&dig_port->base, crtc_state);
+	return intel_dp_initial_fastset_check(primary_encoder, crtc_state);
 }
 
 static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
-- 
2.39.5

