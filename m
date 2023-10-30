Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B737DBD30
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F7510E324;
	Mon, 30 Oct 2023 15:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD7F10E326
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681531; x=1730217531;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/q2RvhlaJ/tyy+R4zFmVf/yBO6+bHkFRk7mMvZ8GFDo=;
 b=MXM2tAQHh7HABbgYaVgjeBQF9BcCHU8PZVKo1T6v7zXxs3V5kWveN3yE
 RwaynfJTmRDdff3Aoo2+f9cvnFdY/sw/LLiClKruq5SmrZAk9Dr2Eng93
 eZkt0dOqtOEKMgiBpq9s+6gubDUkXEQo7X/kFEO3JLA84z3/IixrFVKuq
 vSI1dkt+RSbsh3kZiLToXt8vgwJFcSfo5ftFeS2rybP1ni0JHAE9URvZM
 8pobn5WVCBSx2vNMYWIzB4hyZX42mXtLy4L9cmuZcoGrPV/R/fOnsDnjZ
 R5X1QSBwhw3DNq+O+iqHVmqEpupfxNoHI5s4iJaEFBJzuFxH94PEypGL6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974513"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974513"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494038"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494038"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:36 +0200
Message-Id: <20231030155843.2251023-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 23/30] drm/i915/dp: Enable DSC via the
 connector decompression AUX
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

Enable DSC using the DSC AUX device stored for this purpose in the
connector. For clarity add separate functions to enable/disable the
decompression, since these sequences will diverge more in follow-up
patches that also enable/disable DSC passthrough and on MST do the
actual enabling/disabling only for the first/last user of the given
AUX device. As a preparation for the latter refcounting change, also
pass the atomic state to the functions.

While at it set/clear only the DP_DECOMPRESSION_EN flag in the
DP_DSC_ENABLE DPCD register, preserving the reserved register bits.

Besides preserving the reserved register bits, the behavior stays as
before, as DSC is still only enabled for the first MST stream (which a
follow-up patch changes, enabling it for all streams).

v2:
- Add a helper function setting/clearing the decompression flag,
  preserving the reserved register bits.
v3:
- Add separate functions to enable/disable decompression and pass the
  atomic state to these.
- Add DocBook for both functions.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v2)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 19 +++--
 drivers/gpu/drm/i915/display/intel_dp.c     | 90 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  9 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +-
 4 files changed, 101 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0ec212ead9f02..972b8a5588ec2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2539,7 +2539,9 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
 	if (!is_mst)
-		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+		intel_dp_sink_enable_decompression(state,
+						   to_intel_connector(conn_state->connector),
+						   crtc_state);
 
 	/*
 	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
@@ -2692,7 +2694,9 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
 	if (!is_mst)
-		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
+		intel_dp_sink_enable_decompression(state,
+						   to_intel_connector(conn_state->connector),
+						   crtc_state);
 	/*
 	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
 	 * in the FEC_CONFIGURATION register to 1 before initiating link
@@ -2773,8 +2777,9 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
 	if (!is_mst)
-		intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
-						      true);
+		intel_dp_sink_enable_decompression(state,
+						   to_intel_connector(conn_state->connector),
+						   crtc_state);
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
 	intel_dp_start_link_train(intel_dp, crtc_state);
 	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
@@ -3354,6 +3359,8 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 				 const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector =
+		to_intel_connector(old_conn_state->connector);
 
 	intel_dp->link_trained = false;
 
@@ -3362,8 +3369,8 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
-	intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state,
-					      false);
+	intel_dp_sink_disable_decompression(state,
+					    connector, old_crtc_state);
 	/* Disable Ignore_MSA bit in DP Sink */
 	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_crtc_state,
 						      false);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e4f674192f3b7..0cdb4d176a8f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2937,24 +2937,94 @@ static bool downstream_hpd_needs_d0(struct intel_dp *intel_dp)
 		intel_dp->downstream_ports[0] & DP_DS_PORT_HPD;
 }
 
-void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
-					   const struct intel_crtc_state *crtc_state,
-					   bool enable)
+static int
+write_dsc_decompression_flag(struct drm_dp_aux *aux, u8 flag, bool set)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int ret;
+	int err;
+	u8 val;
 
-	if (!crtc_state->dsc.compression_enable)
-		return;
+	err = drm_dp_dpcd_readb(aux, DP_DSC_ENABLE, &val);
+	if (err < 0)
+		return err;
 
-	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
-				 enable ? DP_DECOMPRESSION_EN : 0);
-	if (ret < 0)
+	if (set)
+		val |= flag;
+	else
+		val &= ~flag;
+
+	return drm_dp_dpcd_writeb(aux, DP_DSC_ENABLE, val);
+}
+
+static void
+intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
+				    bool enable)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	if (write_dsc_decompression_flag(connector->dp.dsc_decompression_aux,
+					 DP_DECOMPRESSION_EN, enable) < 0)
 		drm_dbg_kms(&i915->drm,
 			    "Failed to %s sink decompression state\n",
 			    str_enable_disable(enable));
 }
 
+/**
+ * intel_dp_sink_enable_decompression - Enable DSC decompression in sink/last branch device
+ * @state: atomic state
+ * @connector: connector to enable the decompression for
+ * @new_crtc_state: new state for the CRTC driving @connector
+ *
+ * Enable the DSC decompression if required in the %DP_DSC_ENABLE DPCD
+ * register of the appropriate sink/branch device. On SST this is always the
+ * sink device, whereas on MST based on each device's DSC capabilities it's
+ * either the last branch device (enabling decompression in it) or both the
+ * last branch device (enabling passthrough in it) and the sink device
+ * (enabling decompression in it).
+ */
+void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
+					struct intel_connector *connector,
+					const struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (!new_crtc_state->dsc.compression_enable)
+		return;
+
+	if (drm_WARN_ON(&i915->drm,
+			!connector->dp.dsc_decompression_aux))
+		return;
+
+	/* TODO: Enable passthrough in the MST last branch device if needed. */
+	intel_dp_sink_set_dsc_decompression(connector, true);
+}
+
+/**
+ * intel_dp_sink_disable_decompression - Disable DSC decompression in sink/last branch device
+ * @state: atomic state
+ * @connector: connector to disable the decompression for
+ * @old_crtc_state: old state for the CRTC driving @connector
+ *
+ * Disable the DSC decompression if required in the %DP_DSC_ENABLE DPCD
+ * register of the appropriate sink/branch device, corresponding to the
+ * sequence in intel_dp_sink_enable_decompression().
+ */
+void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
+					 struct intel_connector *connector,
+					 const struct intel_crtc_state *old_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (!old_crtc_state->dsc.compression_enable)
+		return;
+
+	if (drm_WARN_ON(&i915->drm,
+			!connector->dp.dsc_decompression_aux))
+		return;
+
+	intel_dp_sink_set_dsc_decompression(connector, false);
+	/* TODO: Disable passthrough in the MST last branch device if needed. */
+}
+
 static void
 intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2080575fef69a..7cc23d846dfbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -57,9 +57,12 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
-void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
-					   const struct intel_crtc_state *crtc_state,
-					   bool enable);
+void intel_dp_sink_enable_decompression(struct intel_atomic_state *state,
+					struct intel_connector *connector,
+					const struct intel_crtc_state *new_crtc_state);
+void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
+					 struct intel_connector *connector,
+					 const struct intel_crtc_state *old_crtc_state);
 void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder);
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder);
 void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f970e25f57fec..355a573c97930 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -753,7 +753,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 		 * TODO: disable decompression for all streams/in any MST ports, not
 		 * only in the first downstream branch device.
 		 */
-		intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state, false);
+		intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
 }
 
 static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
@@ -913,7 +913,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 		 * TODO: enable decompression for all streams/in any MST ports, not
 		 * only in the first downstream branch device.
 		 */
-		intel_dp_sink_set_decompression_state(intel_dp, pipe_config, true);
+		intel_dp_sink_enable_decompression(state, connector, pipe_config);
 		dig_port->base.pre_enable(state, &dig_port->base,
 						pipe_config, NULL);
 	}
-- 
2.39.2

