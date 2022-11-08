Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17D9621803
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE36D10E4A5;
	Tue,  8 Nov 2022 15:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FED10E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920981; x=1699456981;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8KCTIlFzuezYMRE22TDmaWO9mO5Kjfc/inVK0aPkkA=;
 b=M2Lc3vRUKGCVPsiegmXD5HC3+T8u3RaEvW+2uFT7OaVwgpKTr0pwaKU3
 nJJ/Jt0ORRnQUiVJZROyb8DSuSuj68B2Bu65U4WZLgk3LXURdYv6fOKIN
 RHj977zb0x3NeEM6O5sprivjK1N1IW6baHTeZoL5qgH3hSAGinBvUqCH+
 ohpWbPbgSVC0UNn1quE/su2FE9il7S+37eD+i3ETZXXDWEU8p/fNKHJOZ
 sAh+kJIfDsBjB2Tyg01XYMzx1ShorfXMa1tLj5D+2L2Uc9u/XziSLBqaT
 7r3oGE3S7NxtISEfp0nc3LWyyoNl+K9NrOzwu6mO0rlm0jGvq8+OLySaL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="374992580"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="374992580"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669580914"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="669580914"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:37 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:27 +0200
Message-Id: <20221108151828.3761358-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-9-imre.deak@intel.com>
References: <20221107170917.3566758-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915: Don't enable the AUX_IO power
 for combo-PHY external DP port main links
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

Combo PHY ports require the AUX_IO power only for eDP/PSR, so don't
enable it otherwise on these ports. So far the external DP and eDP case
was handled the same way due to unclarity when AUX_IO for the main link
is needed. However Bspec is clear in which cases it's required:

- eDP/PSR on all ports and platforms (presumably due to HW/FW initiated
  PSR transactions that won't enable AUX_IO)
  Bspec: 4301, 49296
- TypeC PHY ports on platforms before MTL in all TypeC modes (TBT,
  DP-alt, legacy) and for both HDMI and DP. The next patch will take
  into account the pre-MTL platform dependency.
  Bspec: 22243, 53339, 21750, 49190, 49191, 55424, 65448, 65750, 49294,
         55480, 65380

v2:
- Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 21f1a68a57598..cc4bc529a78a5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -846,8 +846,7 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
 }
 
 static enum intel_display_power_domain
-intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
-			       const struct intel_crtc_state *crtc_state)
+intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
@@ -867,20 +866,18 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 */
 	if (intel_encoder_can_psr(&dig_port->base))
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (intel_crtc_has_dp_encoder(crtc_state) ||
-		 intel_phy_is_tc(i915, phy))
+	else if (intel_phy_is_tc(i915, phy))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
 }
 
 static void
-main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
-			       const struct intel_crtc_state *crtc_state)
+main_link_aux_power_domain_get(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum intel_display_power_domain domain =
-		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
+		intel_ddi_main_link_aux_domain(dig_port);
 
 	drm_WARN_ON(&i915->drm, dig_port->aux_wakeref);
 
@@ -891,13 +888,12 @@ main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
 }
 
 static void
-main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
-			       const struct intel_crtc_state *crtc_state)
+main_link_aux_power_domain_put(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	intel_wakeref_t wf = fetch_and_zero(&dig_port->aux_wakeref);
 	enum intel_display_power_domain domain =
-		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
+		intel_ddi_main_link_aux_domain(dig_port);
 
 	if (!wf)
 		return;
@@ -928,7 +924,7 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 								   dig_port->ddi_io_power_domain);
 	}
 
-	main_link_aux_power_domain_get(dig_port, crtc_state);
+	main_link_aux_power_domain_get(dig_port);
 }
 
 void intel_ddi_enable_pipe_clock(struct intel_encoder *encoder,
@@ -2767,7 +2763,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 		intel_ddi_post_disable_dp(state, encoder, old_crtc_state,
 					  old_conn_state);
 
-	main_link_aux_power_domain_put(dig_port, old_crtc_state);
+	main_link_aux_power_domain_put(dig_port);
 
 	if (is_tc_port)
 		intel_tc_port_put_link(dig_port);
@@ -3088,7 +3084,7 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 	if (is_tc_port)
 		intel_tc_port_get_link(dig_port, crtc_state->lane_count);
 
-	main_link_aux_power_domain_get(dig_port, crtc_state);
+	main_link_aux_power_domain_get(dig_port);
 
 	if (is_tc_port && !intel_tc_port_in_tbt_alt_mode(dig_port))
 		/*
-- 
2.37.1

