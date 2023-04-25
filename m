Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F25F6EE0AB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FA310E706;
	Tue, 25 Apr 2023 10:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBDF10E6FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420108; x=1713956108;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YXa5E1Ye8vw6qEH1r14fqkqLHoDSE4yuWJ9I91A0ep4=;
 b=Rhm5t6nkeWqgg6NOWvqfC7Qc0XHIJYt8ODULfv57QOiFgBv3mxEXpvYa
 hNUzroEpYCPKc3wqmptgc9mNHKDzd37cpzKOQryE0OJfV7h7HsWR+Z+Jb
 WjWfxHFRyVCaFc5s0Q1bKi2ZUGCV7u5NgCKExfOgwlS0xuIjo442DNvZN
 R//Ti+DgXgdvJn7MmVukKqP4iIszLKJCEjUX8lOtenxFGgiEG1+4vQS3Q
 W71aGUXN6uVQPlud0Z+fO1/VxjammuWbNhpVVz8zbeSJSVLsjuWwwQ9WY
 J0J1lkSiuEDk3lxVL53lUl4VxNnCvwcu3y00Xhkexj/4wG2EMPsjSST4t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019619"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019619"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367407"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:41 +0300
Message-Id: <20230425105450.18441-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915/dsi: Split icl+ D-PHY vs. DSI
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The programming of the DPHY vs. DSI _TIMING registers are
two separate steps in the TGL+ bspec sequence, with some
other stuff in between. Implement the same split.
Windows also seems follow the bspec TGL+ sequence, even
on ICL/JSL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 70 ++++++++++++++++----------
 1 file changed, 43 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b35b69227e6f..89d608747fff 100644
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
2.39.2

