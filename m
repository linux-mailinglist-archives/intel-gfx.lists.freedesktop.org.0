Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA4572897B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4B110E616;
	Thu,  8 Jun 2023 20:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009E310E616
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256294; x=1717792294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6inrjyUZo8kReKng0u59PO92xxo+SzjaqUTTt/DRD4=;
 b=RSr+FDFKSz8gJB7OqqGGl3SNXdhEZlZm3sFwXD+0T4QGF1MgX/H8ulhW
 lVimBgitcChVPSQQekyN4Mk8Xob2j39gOsm4v8wQnIVgBZA6g1Dny3CBt
 TDIURizFRuP1oNc3WbWoJozXWF6zcrJqQLsQTqxLSdVJicKmKg1/QtIvp
 oKb1tY85gtJCO3MbJk2EDCwgYAY0af07zDfa2A9H53vHs+UciB0gz+sPg
 L4TBTu6PXms82ktFRQupTR+yEnfTO2vx7egWUYVaDGvi6RuKD4tD9ih+e
 IuDpL2JBnv82e8s5p9C3jxadEr1K7IRsWoPAMNAxJQGsjwlDoy73VmXts A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012646"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012646"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100697"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100697"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:48 +0300
Message-Id: <20230608203057.23759-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/13] drm/i915/dsi: Split icl+ D-PHY vs. DSI
 timing steps
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The programming of the DPHY vs. DSI _TIMING registers are
two separate steps in the TGL+ bspec sequence, with some
other stuff in between. Implement the same split.
Windows also seems follow the bspec TGL+ sequence, even
on ICL/JSL.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 70 ++++++++++++++++----------
 1 file changed, 43 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d60cf4592bc7..6d60197cc9f1 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -528,31 +528,16 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	enum port port;
 	enum phy phy;
 
-	/* Program T-INIT master registers */
-	for_each_dsi_port(port, intel_dsi->ports)
-		intel_de_rmw(dev_priv, ICL_DSI_T_INIT_MASTER(port),
-			     DSI_T_INIT_MASTER_MASK, intel_dsi->init_count);
-
 	/* Program DPHY clock lanes timings */
-	for_each_dsi_port(port, intel_dsi->ports) {
+	for_each_dsi_port(port, intel_dsi->ports)
 		intel_de_write(dev_priv, DPHY_CLK_TIMING_PARAM(port),
 			       intel_dsi->dphy_reg);
 
-		/* shadow register inside display core */
-		intel_de_write(dev_priv, DSI_CLK_TIMING_PARAM(port),
-			       intel_dsi->dphy_reg);
-	}
-
 	/* Program DPHY data lanes timings */
-	for_each_dsi_port(port, intel_dsi->ports) {
+	for_each_dsi_port(port, intel_dsi->ports)
 		intel_de_write(dev_priv, DPHY_DATA_TIMING_PARAM(port),
 			       intel_dsi->dphy_data_lane_reg);
 
-		/* shadow register inside display core */
-		intel_de_write(dev_priv, DSI_DATA_TIMING_PARAM(port),
-			       intel_dsi->dphy_data_lane_reg);
-	}
-
 	/*
 	 * If DSI link operating at or below an 800 MHz,
 	 * TA_SURE should be override and programmed to
@@ -561,16 +546,10 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	 */
 	if (DISPLAY_VER(dev_priv) == 11) {
 		if (afe_clk(encoder, crtc_state) <= 800000) {
-			for_each_dsi_port(port, intel_dsi->ports) {
+			for_each_dsi_port(port, intel_dsi->ports)
 				intel_de_rmw(dev_priv, DPHY_TA_TIMING_PARAM(port),
 					     TA_SURE_MASK,
 					     TA_SURE_OVERRIDE | TA_SURE(0));
-
-				/* shadow register inside display core */
-				intel_de_rmw(dev_priv, DSI_TA_TIMING_PARAM(port),
-					     TA_SURE_MASK,
-					     TA_SURE_OVERRIDE | TA_SURE(0));
-			}
 		}
 	}
 
@@ -581,6 +560,41 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
 	}
 }
 
+static void
+gen11_dsi_setup_timings(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	enum port port;
+
+	/* Program T-INIT master registers */
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_rmw(dev_priv, ICL_DSI_T_INIT_MASTER(port),
+			     DSI_T_INIT_MASTER_MASK, intel_dsi->init_count);
+
+	/* shadow register inside display core */
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_write(dev_priv, DSI_CLK_TIMING_PARAM(port),
+			       intel_dsi->dphy_reg);
+
+	/* shadow register inside display core */
+	for_each_dsi_port(port, intel_dsi->ports)
+		intel_de_write(dev_priv, DSI_DATA_TIMING_PARAM(port),
+			       intel_dsi->dphy_data_lane_reg);
+
+	/* shadow register inside display core */
+	if (DISPLAY_VER(dev_priv) == 11) {
+		if (afe_clk(encoder, crtc_state) <= 800000) {
+			for_each_dsi_port(port, intel_dsi->ports) {
+				intel_de_rmw(dev_priv, DSI_TA_TIMING_PARAM(port),
+					     TA_SURE_MASK,
+					     TA_SURE_OVERRIDE | TA_SURE(0));
+			}
+		}
+	}
+}
+
 static void gen11_dsi_gate_clocks(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
@@ -1090,12 +1104,14 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	/* step 4c: configure voltage swing and skew */
 	gen11_dsi_voltage_swing_program_seq(encoder);
 
-	/* enable DDI buffer */
-	gen11_dsi_enable_ddi_buffer(encoder);
-
 	/* setup D-PHY timings */
 	gen11_dsi_setup_dphy_timings(encoder, crtc_state);
 
+	/* enable DDI buffer */
+	gen11_dsi_enable_ddi_buffer(encoder);
+
+	gen11_dsi_setup_timings(encoder, crtc_state);
+
 	/* Since transcoder is configured to take events from GPIO */
 	gen11_dsi_config_util_pin(encoder, true);
 
-- 
2.39.3

