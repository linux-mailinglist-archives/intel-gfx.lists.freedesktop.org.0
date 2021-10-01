Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F5A41EE0C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6ED6ECE0;
	Fri,  1 Oct 2021 13:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC176ECE0
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:01:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="205580930"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="205580930"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="556294727"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 01 Oct 2021 06:01:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:00 +0300
Message-Id: <20211001130107.1746-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/10] drm/i915: Generalize
 .set_signal_levels()
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

Currently .set_signal_levels() is only used by encoders in DP mode.
For most modern platforms there is no essential difference between
DP and HDMI, and both codepaths just end up calling the same function
under the hood. Let's get remove the need for that extra indirection
by moving .set_signal_levels() into the encoder from intel_dp.
Since we already plumb the crtc_state/etc. into .set_signal_levels()
the code will do the right thing for both DP and HDMI.

HSW/BDW/SKL are the only platforms that need a bit of care on
account of having to preload the hardware buf_trans register
with the full set of values. So we must still remember to call
hsw_prepare_{dp,hdmi}_ddi_buffers() to do said preloading, and
.set_signal_levels() will just end up selecting the correct entry
for DP, and also setting up the iboost magic for both DP and HDMI.

Note that previously on HSW/BDW/SKL we did write to DDI_BUF_CTL to
select the correct entry until link training started, now that we
call .set_signal_levels() already from hsw_ddi_pre_enable_dp() that
is no longer the case. But it's all safe now that the
intel_ddi_init_dp_buf_reg() call was hoisted up and it no longer
sets up the DDI_BUF_CTL_ENABLE bit (that is still deferred until
link training).

v2: Rebase due to has_{iboost,buf_trans_select}()
    Add some notes about the DDI_BUF_CTL situation on HSW/BDW/SKL (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  33 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 104 ++++++++----------
 .../drm/i915/display/intel_display_types.h    |   5 +-
 .../drm/i915/display/intel_dp_link_training.c |   5 +-
 4 files changed, 71 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 69a2e5ad2317..60ae2ba52006 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -808,10 +808,10 @@ static u8 intel_dp_preemph_max_3(struct intel_dp *intel_dp)
 	return DP_TRAIN_PRE_EMPH_LEVEL_3;
 }
 
-static void vlv_set_signal_levels(struct intel_dp *intel_dp,
+static void vlv_set_signal_levels(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	unsigned long demph_reg_value, preemph_reg_value,
 		uniqtranscale_reg_value;
 	u8 train_set = intel_dp->train_set[0];
@@ -894,10 +894,10 @@ static void vlv_set_signal_levels(struct intel_dp *intel_dp,
 				 uniqtranscale_reg_value, 0);
 }
 
-static void chv_set_signal_levels(struct intel_dp *intel_dp,
+static void chv_set_signal_levels(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u32 deemph_reg_value, margin_reg_value;
 	bool uniq_trans_scale = false;
 	u8 train_set = intel_dp->train_set[0];
@@ -1015,10 +1015,11 @@ static u32 g4x_signal_levels(u8 train_set)
 }
 
 static void
-g4x_set_signal_levels(struct intel_dp *intel_dp,
+g4x_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
@@ -1062,10 +1063,11 @@ static u32 snb_cpu_edp_signal_levels(u8 train_set)
 }
 
 static void
-snb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
+snb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
@@ -1113,10 +1115,11 @@ static u32 ivb_cpu_edp_signal_levels(u8 train_set)
 }
 
 static void
-ivb_cpu_edp_set_signal_levels(struct intel_dp *intel_dp,
+ivb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
@@ -1359,15 +1362,15 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		dig_port->dp.set_link_train = g4x_set_link_train;
 
 	if (IS_CHERRYVIEW(dev_priv))
-		dig_port->dp.set_signal_levels = chv_set_signal_levels;
+		intel_encoder->set_signal_levels = chv_set_signal_levels;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dig_port->dp.set_signal_levels = vlv_set_signal_levels;
+		intel_encoder->set_signal_levels = vlv_set_signal_levels;
 	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
-		dig_port->dp.set_signal_levels = ivb_cpu_edp_set_signal_levels;
+		intel_encoder->set_signal_levels = ivb_cpu_edp_set_signal_levels;
 	else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
-		dig_port->dp.set_signal_levels = snb_cpu_edp_set_signal_levels;
+		intel_encoder->set_signal_levels = snb_cpu_edp_set_signal_levels;
 	else
-		dig_port->dp.set_signal_levels = g4x_set_signal_levels;
+		intel_encoder->set_signal_levels = g4x_set_signal_levels;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
 	    (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dbcf4ddd0f3b..ad7fe84b6d75 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -139,10 +139,10 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
  * HDMI/DVI use cases.
  */
 static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
-					 const struct intel_crtc_state *crtc_state,
-					 int level)
+					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int level = intel_ddi_hdmi_level(encoder, crtc_state);
 	u32 iboost_bit = 0;
 	int n_entries;
 	enum port port = encoder->port;
@@ -1405,8 +1405,7 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int intel_ddi_dp_level(struct intel_dp *intel_dp,
-			      const struct intel_crtc_state *crtc_state)
+static int intel_ddi_dp_level(struct intel_dp *intel_dp)
 {
 	u8 train_set = intel_dp->train_set[0];
 	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
@@ -1415,56 +1414,68 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp,
 	return translate_signal_level(intel_dp, signal_levels);
 }
 
+static int intel_ddi_level(struct intel_encoder *encoder,
+			   const struct intel_crtc_state *crtc_state)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return intel_ddi_hdmi_level(encoder, crtc_state);
+	else
+		return intel_ddi_dp_level(enc_to_intel_dp(encoder));
+}
+
 static void
-dg2_set_signal_levels(struct intel_dp *intel_dp,
+dg2_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state);
 
 	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
 }
 
 static void
-tgl_set_signal_levels(struct intel_dp *intel_dp,
+tgl_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state);
 
 	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
 }
 
 static void
-icl_set_signal_levels(struct intel_dp *intel_dp,
+icl_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state);
 
 	icl_ddi_vswing_sequence(encoder, crtc_state, level);
 }
 
 static void
-bxt_set_signal_levels(struct intel_dp *intel_dp,
+bxt_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state);
 
 	bxt_ddi_vswing_sequence(encoder, crtc_state, level);
 }
 
 static void
-hsw_set_signal_levels(struct intel_dp *intel_dp,
+hsw_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int level = intel_ddi_level(encoder, crtc_state);
 	enum port port = encoder->port;
 	u32 signal_levels;
 
+	if (has_iboost(dev_priv))
+		skl_ddi_set_iboost(encoder, crtc_state, level);
+
+	/* HDMI ignores the rest */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return;
+
 	signal_levels = DDI_BUF_TRANS_SELECT(level);
 
 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
@@ -1473,9 +1484,6 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	if (has_iboost(dev_priv))
-		skl_ddi_set_iboost(encoder, crtc_state, level);
-
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 }
@@ -2366,7 +2374,6 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
 
 	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
 				 crtc_state->lane_count);
@@ -2431,7 +2438,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 
 	/* 5.e Configure voltage swing and related IO settings */
-	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
+	encoder->set_signal_levels(encoder, crtc_state);
 
 	if (!is_mst)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
@@ -2474,7 +2481,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
 
 	intel_dp_set_link_params(intel_dp,
 				 crtc_state->port_clock,
@@ -2554,7 +2560,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 
 	/* 7.e Configure voltage swing and related IO settings */
-	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
+	encoder->set_signal_levels(encoder, crtc_state);
 
 	/*
 	 * 7.f Combo PHY: Configure PORT_CL_DW10 Static Power Down to power up
@@ -2611,7 +2617,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	enum port port = encoder->port;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
-	int level = intel_ddi_dp_level(intel_dp, crtc_state);
 
 	if (DISPLAY_VER(dev_priv) < 11)
 		drm_WARN_ON(&dev_priv->drm,
@@ -2641,14 +2646,11 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_ddi_vswing_sequence(encoder, crtc_state, level);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
-
 	if (has_buf_trans_select(dev_priv))
 		hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
 
+	encoder->set_signal_levels(encoder, crtc_state);
+
 	intel_ddi_power_up_lanes(encoder, crtc_state);
 
 	if (!is_mst)
@@ -3074,7 +3076,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
-	int level = intel_ddi_hdmi_level(encoder, crtc_state);
 	enum port port = encoder->port;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
@@ -3084,20 +3085,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 			    "[CONNECTOR:%d:%s] Failed to configure sink scrambling/TMDS bit clock ratio\n",
 			    connector->base.id, connector->name);
 
-	if (IS_DG2(dev_priv))
-		intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
-	else if (DISPLAY_VER(dev_priv) == 11)
-		icl_ddi_vswing_sequence(encoder, crtc_state, level);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		bxt_ddi_vswing_sequence(encoder, crtc_state, level);
-
 	if (has_buf_trans_select(dev_priv))
-		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state, level);
+		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
-	if (has_iboost(dev_priv))
-		skl_ddi_set_iboost(encoder, crtc_state, level);
+	encoder->set_signal_levels(encoder, crtc_state);
 
 	/* Display WA #1143: skl,kbl,cfl */
 	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
@@ -4057,7 +4048,6 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 static struct intel_connector *
 intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
@@ -4070,17 +4060,6 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
 
-	if (IS_DG2(dev_priv))
-		dig_port->dp.set_signal_levels = dg2_set_signal_levels;
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		dig_port->dp.set_signal_levels = tgl_set_signal_levels;
-	else if (DISPLAY_VER(dev_priv) >= 11)
-		dig_port->dp.set_signal_levels = icl_set_signal_levels;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		dig_port->dp.set_signal_levels = bxt_set_signal_levels;
-	else
-		dig_port->dp.set_signal_levels = hsw_set_signal_levels;
-
 	dig_port->dp.voltage_max = intel_ddi_dp_voltage_max;
 	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
 
@@ -4652,6 +4631,17 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
+	if (IS_DG2(dev_priv))
+		encoder->set_signal_levels = dg2_set_signal_levels;
+	else if (DISPLAY_VER(dev_priv) >= 12)
+		encoder->set_signal_levels = tgl_set_signal_levels;
+	else if (DISPLAY_VER(dev_priv) >= 11)
+		encoder->set_signal_levels = icl_set_signal_levels;
+	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		encoder->set_signal_levels = bxt_set_signal_levels;
+	else
+		encoder->set_signal_levels = hsw_set_signal_levels;
+
 	intel_ddi_buf_trans_init(encoder);
 
 	if (DISPLAY_VER(dev_priv) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 632391197937..a811e13720bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -269,6 +269,9 @@ struct intel_encoder {
 	const struct intel_ddi_buf_trans *(*get_buf_trans)(struct intel_encoder *encoder,
 							   const struct intel_crtc_state *crtc_state,
 							   int *n_entries);
+	void (*set_signal_levels)(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state);
+
 	enum hpd_pin hpd_pin;
 	enum intel_display_power_domain power_domain;
 	/* for communication with audio component; protected by av_mutex */
@@ -1601,8 +1604,6 @@ struct intel_dp {
 			       u8 dp_train_pat);
 	void (*set_idle_link_train)(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state);
-	void (*set_signal_levels)(struct intel_dp *intel_dp,
-				  const struct intel_crtc_state *crtc_state);
 
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 053ed9302cda..62d5c6cf60ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -398,7 +398,8 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 				const struct intel_crtc_state *crtc_state,
 				enum drm_dp_phy dp_phy)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u8 train_set = intel_dp->train_set[0];
 	char phy_name[10];
 
@@ -412,7 +413,7 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
 		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
 
 	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
-		intel_dp->set_signal_levels(intel_dp, crtc_state);
+		encoder->set_signal_levels(encoder, crtc_state);
 }
 
 static bool
-- 
2.32.0

