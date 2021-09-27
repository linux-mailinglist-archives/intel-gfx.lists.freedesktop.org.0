Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EE8419E25
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 20:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B9A6E44C;
	Mon, 27 Sep 2021 18:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46EC6E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 18:25:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="224603019"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="224603019"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="456339817"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 27 Sep 2021 11:25:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Sep 2021 21:25:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 21:24:49 +0300
Message-Id: <20210927182455.27119-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
References: <20210927182455.27119-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Nuke usless .set_signal_levels()
 wrappers
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

Now that .set_signal_levels() is used for HDMI as well, we can
remove the extra level of indirection and just plug the correct
stuff straight into .set_signal_levels().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 119 +++++-------------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c |   7 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   5 +-
 4 files changed, 39 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4a22dcde66d9..62ab57c391ef 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -995,11 +995,11 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 		_skl_ddi_set_iboost(dev_priv, PORT_E, iboost);
 }
 
-static void bxt_ddi_vswing_sequence(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state,
-				    int level)
+static void bxt_set_signal_levels(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int level = intel_ddi_level(encoder, crtc_state);
 	const struct intel_ddi_buf_trans *trans;
 	enum port port = encoder->port;
 	int n_entries;
@@ -1047,10 +1047,10 @@ static u8 intel_ddi_dp_preemph_max(struct intel_dp *intel_dp)
 }
 
 static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
-					 const struct intel_crtc_state *crtc_state,
-					 int level)
+					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int level = intel_ddi_level(encoder, crtc_state);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	int n_entries, ln;
@@ -1109,9 +1109,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
 }
 
-static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-					      const struct intel_crtc_state *crtc_state,
-					      int level)
+static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
+					    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
@@ -1162,7 +1161,7 @@ static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* 5. Program swing and de-emphasis */
-	icl_ddi_combo_vswing_program(encoder, crtc_state, level);
+	icl_ddi_combo_vswing_program(encoder, crtc_state);
 
 	/* 6. Set training enable to trigger update */
 	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN0(phy));
@@ -1170,12 +1169,12 @@ static void icl_combo_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 }
 
-static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-					   const struct intel_crtc_state *crtc_state,
-					   int level)
+static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
+					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	int level = intel_ddi_level(encoder, crtc_state);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
 	u32 val;
@@ -1293,26 +1292,12 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	}
 }
 
-static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state,
-				    int level)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-
-	if (intel_phy_is_combo(dev_priv, phy))
-		icl_combo_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-	else
-		icl_mg_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
-static void
-tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state,
-				int level)
+static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
+					  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
+	int level = intel_ddi_level(encoder, crtc_state);
 	const struct intel_ddi_buf_trans *trans;
 	u32 val, dpcnt_mask, dpcnt_val;
 	int n_entries, ln;
@@ -1364,19 +1349,6 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	}
 }
 
-static void tgl_ddi_vswing_sequence(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state,
-				    int level)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-
-	if (intel_phy_is_combo(dev_priv, phy))
-		icl_combo_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-	else
-		tgl_dkl_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
 static int translate_signal_level(struct intel_dp *intel_dp,
 				  u8 signal_levels)
 {
@@ -1404,8 +1376,8 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp)
 	return translate_signal_level(intel_dp, signal_levels);
 }
 
-static int intel_ddi_level(struct intel_encoder *encoder,
-			   const struct intel_crtc_state *crtc_state)
+int intel_ddi_level(struct intel_encoder *encoder,
+		    const struct intel_crtc_state *crtc_state)
 {
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_ddi_hdmi_level(encoder, crtc_state);
@@ -1413,42 +1385,6 @@ static int intel_ddi_level(struct intel_encoder *encoder,
 		return intel_ddi_dp_level(enc_to_intel_dp(encoder));
 }
 
-static void
-dg2_set_signal_levels(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
-{
-	int level = intel_ddi_level(encoder, crtc_state);
-
-	intel_snps_phy_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
-static void
-tgl_set_signal_levels(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
-{
-	int level = intel_ddi_level(encoder, crtc_state);
-
-	tgl_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
-static void
-icl_set_signal_levels(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
-{
-	int level = intel_ddi_level(encoder, crtc_state);
-
-	icl_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
-static void
-bxt_set_signal_levels(struct intel_encoder *encoder,
-		      const struct intel_crtc_state *crtc_state)
-{
-	int level = intel_ddi_level(encoder, crtc_state);
-
-	bxt_ddi_vswing_sequence(encoder, crtc_state, level);
-}
-
 static void
 hsw_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
@@ -4625,16 +4561,23 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (IS_DG2(dev_priv))
-		encoder->set_signal_levels = dg2_set_signal_levels;
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		encoder->set_signal_levels = tgl_set_signal_levels;
-	else if (DISPLAY_VER(dev_priv) >= 11)
-		encoder->set_signal_levels = icl_set_signal_levels;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (IS_DG2(dev_priv)) {
+		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
+		if (intel_phy_is_combo(dev_priv, phy))
+			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
+		else
+			encoder->set_signal_levels = tgl_dkl_phy_set_signal_levels;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
+		if (intel_phy_is_combo(dev_priv, phy))
+			encoder->set_signal_levels = icl_combo_phy_set_signal_levels;
+		else
+			encoder->set_signal_levels = icl_mg_phy_set_signal_levels;
+	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 		encoder->set_signal_levels = bxt_set_signal_levels;
-	else
+	} else {
 		encoder->set_signal_levels = hsw_set_signal_levels;
+	}
 
 	intel_ddi_buf_trans_init(encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 7d448485d887..d6947c06a455 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -59,13 +59,11 @@ void intel_ddi_set_vc_payload_alloc(const struct intel_crtc_state *crtc_state,
 				    bool state);
 void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state);
-u32 bxt_signal_levels(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state);
-u32 ddi_signal_levels(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state);
 int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask);
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
+int intel_ddi_level(struct intel_encoder *encoder,
+		    const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 3734e349f91d..f59cc320ce9c 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -5,6 +5,7 @@
 
 #include <linux/util_macros.h>
 
+#include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -51,13 +52,13 @@ void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
 			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
 }
 
-void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-					const struct intel_crtc_state *crtc_state,
-					int level)
+void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct intel_ddi_buf_trans *trans;
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+	int level = intel_ddi_level(encoder, crtc_state);
 	int n_entries, ln;
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index a68547a6fee5..11dcd6deb070 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -29,8 +29,7 @@ int intel_mpllb_calc_port_clock(struct intel_encoder *encoder,
 				const struct intel_mpllb_state *pll_state);
 
 int intel_snps_phy_check_hdmi_link_rate(int clock);
-void intel_snps_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
-					const struct intel_crtc_state *crtc_state,
-					int level);
+void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_SNPS_PHY_H__ */
-- 
2.32.0

