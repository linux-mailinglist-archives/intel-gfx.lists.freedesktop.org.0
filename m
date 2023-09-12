Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD4779C4D6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0721F10E36D;
	Tue, 12 Sep 2023 04:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F53210E35B;
 Tue, 12 Sep 2023 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494113; x=1726030113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vu4IvyJizp1ejYFpS2JqnS9Eo1JZ5y5RNBuWzqASOak=;
 b=fcfLXMiB7algNhl36SfCJnicXDGOLgggEGElK62tNtHXitD69RvELz7g
 PN/KrrarjirVWE94h1fAZ7zznXkkAKu5ojDwtylNvT/H/tl2WQpnmpf+T
 B/RBT9JYCD6FnlfUgU6oEwsso5gN/qdD352KEBmEHpcD2dVyK+vskrXGm
 tA2BzSFvMFRAwYwHho0tjg8yJ6ob246ddKOluFampWle/i+BIzOh2zFfV
 3mW4g2yHIi1zb8ga5cw1z2dMXnSekTHar9KuONeAkZoj0nwHFq8WuP2oe
 u9O5HJ+AVkV7SkG87yht8TPIdjB9GUM5jch7irLrkZtGkPhaZY9OEbnmC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182316"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182316"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419932"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419932"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:16 -0700
Message-Id: <20230912044837.1672060-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/29] drm/i915/display: Consolidate saved
 port bits in intel_digital_port
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

We use multiple variables for HDMI and DisplayPort to store the value of
DDI_BUF_CTL register (now called DDI_CTL_DE in the spec). Consolidate it
to just one in struct intel_digital_port. This is a preparation step for
future changes in D2D enable/disable sequence for xe2lpd that need to
save some additional bits.

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
 drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
 2 files changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 690e1e02aba8..75a2da5d0c9e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -325,26 +325,25 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
-	intel_dp->DP = dig_port->saved_port_bits |
+	dig_port->saved_port_bits |=
 		DDI_PORT_WIDTH(crtc_state->lane_count) |
 		DDI_BUF_TRANS_SELECT(0);
 
 	if (DISPLAY_VER(i915) >= 14) {
 		if (intel_dp_is_uhbr(crtc_state))
-			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
+			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
 		else
-			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
+			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
 	}
 
 	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
-		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
+		dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
-			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+			dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 }
 
@@ -1450,7 +1449,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	int level = intel_ddi_level(encoder, crtc_state, 0);
 	enum port port = encoder->port;
 	u32 signal_levels;
@@ -1467,10 +1466,10 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
-	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
-	intel_dp->DP |= signal_levels;
+	dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
+	dig_port->saved_port_bits |= signal_levels;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 }
 
@@ -3145,7 +3144,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
-	u32 buf_ctl;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
@@ -3211,7 +3209,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
 		u32 port_buf = 0;
@@ -3224,13 +3222,13 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
 
-		buf_ctl |= DDI_PORT_WIDTH(lane_count);
+		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
 	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
-		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+		dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
 
 	intel_wait_ddi_buf_active(dev_priv, port);
 
@@ -3448,8 +3446,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	mtl_port_buf_ctl_program(encoder, crtc_state);
 
 	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
 	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
@@ -3499,8 +3497,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
 	intel_wait_ddi_buf_active(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2206b45bc78c..fdf71185cb00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6017,7 +6017,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->pps.active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
+	dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
 	intel_dp->attached_connector = intel_connector;
 
 	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
-- 
2.40.1

