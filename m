Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AE6627DA2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F04710E0B7;
	Mon, 14 Nov 2022 12:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8FB10E0A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428595; x=1699964595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pp+hUGNRmb++pVX2rRDA7YCN1xCAMXByStAud87mvD8=;
 b=AO8mO9C0BnKJyUA4tXXAMDJH7WhBg+5ZikGsyFC/4f2kEdVh/9hwZRIi
 EZM/miBpTlrruV8ElP4lpc9CyK9+mu+Fp5MpUJxO1OmvVy3iIWKfkQk/9
 L5XKxwIkTj5DNCPN+IVZgPUihFpuOuAIiQyaPXQLUD6smTcRbcLIPaA+s
 zm7s7P+zCynXPMOrnJw7uK1UPYUco0+7UC4cytJU/kkwGBXtwn9UOiDf6
 sRmmH3l68vPrwqBe7T4fWAIH8IgasOD3XAkfPY/NL8bUMqMBb4J04H/wY
 O87nErHMe9mZhY0f/lr6zaWtmx/rmAL2//53KBj5Dajbius41vgsOpLih A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664142"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664142"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539883"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539883"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:04 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:50 +0200
Message-Id: <20221114122251.21327-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 8/9] drm/i915: Factor out function to get/put
 AUX_IO power for main link
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out functions to get/put the AUX_IO power domain for the main
link on DDI ports.

While at it clarify the corresponding code comment.

No functional change.

v2:
- s/(get/put)_aux_power_for_main_link/main_link_aux_power_domain_(get/put)
  (Jani)
- Clarify in the code comment that AUX_IO is needed only by TypeC besides
  eDP/PSR.
v3:
- Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.
v4:
- Don't call fetch_and_zero() with side-effect during variable
  declaration. (Ville)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 85 +++++++++++++++---------
 1 file changed, 52 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8184d492b195c..0231b273e1673 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -847,26 +847,64 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
 }
 
 static enum intel_display_power_domain
-intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
+intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
+			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
-	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
+	/*
+	 * ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
 	 * DC states enabled at the same time, while for driver initiated AUX
 	 * transfers we need the same AUX IOs to be powered but with DC states
-	 * disabled. Accordingly use the AUX power domain here which leaves DC
-	 * states enabled.
-	 * However, for non-A AUX ports the corresponding non-EDP transcoders
-	 * would have already enabled power well 2 and DC_OFF. This means we can
-	 * acquire a wider POWER_DOMAIN_AUX_{B,C,D,F} reference instead of a
-	 * specific AUX_IO reference without powering up any extra wells.
-	 * Note that PSR is enabled only on Port A even though this function
-	 * returns the correct domain for other ports too.
+	 * disabled. Accordingly use the AUX_IO_<port> power domain here which
+	 * leaves DC states enabled.
+	 *
+	 * Before MTL TypeC PHYs (in all TypeC modes and both DP/HDMI) also require
+	 * AUX IO to be enabled, but all these require DC_OFF to be enabled as
+	 * well, so we can acquire a wider AUX_<port> power domain reference
+	 * instead of a specific AUX_IO_<port> reference without powering up any
+	 * extra wells.
 	 */
 	if (intel_encoder_can_psr(&dig_port->base))
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else
+	else if (intel_crtc_has_dp_encoder(crtc_state) ||
+		 intel_phy_is_tc(i915, phy))
 		return intel_aux_power_domain(dig_port);
+	else
+		return POWER_DOMAIN_INVALID;
+}
+
+static void
+main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum intel_display_power_domain domain =
+		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
+
+	drm_WARN_ON(&i915->drm, dig_port->aux_wakeref);
+
+	if (domain == POWER_DOMAIN_INVALID)
+		return;
+
+	dig_port->aux_wakeref = intel_display_power_get(i915, domain);
+}
+
+static void
+main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum intel_display_power_domain domain =
+		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
+	intel_wakeref_t wf;
+
+	wf = fetch_and_zero(&dig_port->aux_wakeref);
+	if (!wf)
+		return;
+
+	intel_display_power_put(i915, domain, wf);
 }
 
 static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
@@ -874,7 +912,6 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
 	/*
 	 * TODO: Add support for MST encoders. Atm, the following should never
@@ -893,17 +930,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 								   dig_port->ddi_io_power_domain);
 	}
 
-	/*
-	 * AUX power is only needed for (e)DP mode, and for HDMI mode on TC
-	 * ports.
-	 */
-	if (intel_crtc_has_dp_encoder(crtc_state) ||
-	    intel_phy_is_tc(dev_priv, phy)) {
-		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
-		dig_port->aux_wakeref =
-			intel_display_power_get(dev_priv,
-						intel_ddi_main_link_aux_domain(dig_port));
-	}
+	main_link_aux_power_domain_get(dig_port, crtc_state);
 }
 
 void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
@@ -2742,10 +2769,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
 					  old_conn_state);
 
-	if (intel_crtc_has_dp_encoder(old_crtc_state) || is_tc_port)
-		intel_display_power_put(dev_priv,
-					intel_ddi_main_link_aux_domain(dig_port),
-					fetch_and_zero(&dig_port->aux_wakeref));
+	main_link_aux_power_domain_put(dig_port, old_crtc_state);
 
 	if (is_tc_port)
 		intel_tc_port_put_link(dig_port);
@@ -3066,12 +3090,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	if (is_tc_port)
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
 
-	if (intel_crtc_has_dp_encoder(crtc_state) || is_tc_port) {
-		drm_WARN_ON(&dev_priv->drm, dig_port->aux_wakeref);
-		dig_port->aux_wakeref =
-			intel_display_power_get(dev_priv,
-						intel_ddi_main_link_aux_domain(dig_port));
-	}
+	main_link_aux_power_domain_get(dig_port, crtc_state);
 
 	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
 		/*
-- 
2.37.1

