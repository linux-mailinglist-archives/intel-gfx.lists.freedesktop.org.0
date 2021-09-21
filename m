Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31D24129ED
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 02:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528266E8C1;
	Tue, 21 Sep 2021 00:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E5B6E8C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 00:23:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="210495646"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="210495646"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="549183720"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 17:23:23 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 21 Sep 2021 03:23:05 +0300
Message-Id: <20210921002313.1132357-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-1-imre.deak@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/tc: Add/use helpers to retrieve
 TypeC port properties
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

Instead of directly accessing the TypeC port internal struct members,
add/use helpers to retrieve the corresponding properties.

No functional change.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 31 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +---
 .../drm/i915/display/intel_display_power.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  6 +---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 +--
 drivers/gpu/drm/i915/display/intel_tc.c       | 24 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.h       |  4 +++
 7 files changed, 46 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c4ed4675f5791..b9194d6a4dfe7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -288,7 +288,7 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 
 	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
 		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
-		if (dig_port->tc_mode != TC_PORT_TBT_ALT)
+		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 }
@@ -885,8 +885,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 
 	dig_port = enc_to_dig_port(encoder);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
 		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
 								   dig_port->ddi_io_power_domain);
@@ -1180,7 +1179,7 @@ static void icl_mg_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	int n_entries, ln;
 	u32 val;
 
-	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
 	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
@@ -1317,7 +1316,7 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 	u32 val, dpcnt_mask, dpcnt_val;
 	int n_entries, ln;
 
-	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
+	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
 	ddi_translations = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
@@ -2084,7 +2083,7 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	u8 width;
 
 	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode == TC_PORT_TBT_ALT)
+	    intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
@@ -2109,7 +2108,7 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
 	switch (pin_assignment) {
 	case 0x0:
 		drm_WARN_ON(&dev_priv->drm,
-			    dig_port->tc_mode != TC_PORT_LEGACY);
+			    !intel_tc_port_in_legacy_mode(dig_port));
 		if (width == 1) {
 			ln1 |= MG_DP_MODE_CFG_DP_X1_MODE;
 		} else {
@@ -2354,7 +2353,6 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp, crtc_state);
@@ -2378,8 +2376,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	/* 4. Enable IO power */
-	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT)
+	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
 								   dig_port->ddi_io_power_domain);
 
@@ -2468,7 +2465,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp, crtc_state);
@@ -2505,8 +2501,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
-	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
 		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
 								   dig_port->ddi_io_power_domain);
@@ -2611,7 +2606,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int level = intel_ddi_dp_level(intel_dp, crtc_state);
@@ -2630,8 +2624,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_enable_clock(encoder, crtc_state);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT) {
+	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
 		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
 								   dig_port->ddi_io_power_domain);
@@ -2801,7 +2794,6 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = &dig_port->dp;
 	bool is_mst = intel_crtc_has_type(old_crtc_state,
 					  INTEL_OUTPUT_DP_MST);
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
 	if (!is_mst)
 		intel_dp_set_infoframes(encoder, false,
@@ -2844,8 +2836,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_pps_vdd_on(intel_dp);
 	intel_pps_off(intel_dp);
 
-	if (!intel_phy_is_tc(dev_priv, phy) ||
-	    dig_port->tc_mode != TC_PORT_TBT_ALT)
+	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_display_power_put(dev_priv,
 					dig_port->ddi_io_power_domain,
 					fetch_and_zero(&dig_port->ddi_io_wakeref));
@@ -3322,7 +3313,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 						intel_ddi_main_link_aux_domain(dig_port));
 	}
 
-	if (is_tc_port && dig_port->tc_mode != TC_PORT_TBT_ALT)
+	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
 		/*
 		 * Program the lane count for static/dynamic connections on
 		 * Type-C ports.  Skip this step for TBT.
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8547842935389..ddd8aa6560352 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3361,11 +3361,7 @@ enum intel_display_power_domain intel_port_to_power_domain(enum port port)
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-
-	if (intel_phy_is_tc(dev_priv, phy) &&
-	    dig_port->tc_mode == TC_PORT_TBT_ALT) {
+	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		switch (dig_port->aux_ch) {
 		case AUX_CH_C:
 			return POWER_DOMAIN_AUX_C_TBT;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cce1a926fcc10..ee03483047632 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -560,7 +560,7 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
 		return;
 
-	if (DISPLAY_VER(dev_priv) == 11 && dig_port->tc_legacy_port)
+	if (DISPLAY_VER(dev_priv) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
 		return;
 
 	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
@@ -629,7 +629,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	 * exit sequence.
 	 */
 	timeout_expected = is_tbt || intel_tc_cold_requires_aux_pw(dig_port);
-	if (DISPLAY_VER(dev_priv) == 11 && dig_port->tc_legacy_port)
+	if (DISPLAY_VER(dev_priv) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
 		icl_tc_cold_exit(dev_priv);
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, timeout_expected);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index d9b2a783101d0..fbe1166bc5a64 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -150,9 +150,6 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 				u32 unused)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 =
-			to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	u32 ret;
 
 	/*
@@ -170,8 +167,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(32) |
 	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(32);
 
-	if (intel_phy_is_tc(i915, phy) &&
-	    dig_port->tc_mode == TC_PORT_TBT_ALT)
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		ret |= DP_AUX_CH_CTL_TBT_IO;
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 055992d099c7c..0a7e04db04be4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -26,6 +26,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_tc.h"
 
 /**
  * DOC: Display PLLs
@@ -3101,8 +3102,8 @@ static void icl_update_active_dpll(struct intel_atomic_state *state,
 		enc_to_dig_port(encoder);
 
 	if (primary_port &&
-	    (primary_port->tc_mode == TC_PORT_DP_ALT ||
-	     primary_port->tc_mode == TC_PORT_LEGACY))
+	    (intel_tc_port_in_dp_alt_mode(primary_port) ||
+	     intel_tc_port_in_legacy_mode(primary_port)))
 		port_dpll_id = ICL_PORT_DPLL_MG_PHY;
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 1f76c11d70834..511c46e36e237 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -23,6 +23,30 @@ static const char *tc_port_mode_name(enum tc_port_mode mode)
 	return names[mode];
 }
 
+static bool intel_tc_port_in_mode(struct intel_digital_port *dig_port,
+				  enum tc_port_mode mode)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	return intel_phy_is_tc(i915, phy) && dig_port->tc_mode == mode;
+}
+
+bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port)
+{
+	return intel_tc_port_in_mode(dig_port, TC_PORT_TBT_ALT);
+}
+
+bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port)
+{
+	return intel_tc_port_in_mode(dig_port, TC_PORT_DP_ALT);
+}
+
+bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
+{
+	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
+}
+
 static enum intel_display_power_domain
 tc_cold_get_power_domain(struct intel_digital_port *dig_port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 0c881f645e279..0fdcddb4fc870 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -12,6 +12,10 @@
 struct intel_digital_port;
 struct intel_encoder;
 
+bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port);
+bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
+bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
+
 bool intel_tc_port_connected(struct intel_encoder *encoder);
 void intel_tc_port_disconnect_phy(struct intel_digital_port *dig_port);
 
-- 
2.27.0

