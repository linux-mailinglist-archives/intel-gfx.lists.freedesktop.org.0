Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9D16E94F1
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B0C10EC3C;
	Thu, 20 Apr 2023 12:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CBF10E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994768; x=1713530768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QlxWko9XvzHS8HFfQ31Y4k7HORJnDUYx1B+ZStPqkAc=;
 b=GdIvgkYcnmu6f2wfHCFrG8cC+s/oDoj85KBJptR959iiHn3ZxW7IlUg7
 eSDRsoqyqfkPmmJBTpI1cb5dcbFT++R8QdIAjn8zIoyEF1hsUnOZ5zbFI
 3tNRTFxI4doSuxP5TDp7hLisBAMYocIH4Arna3h2MCVDI5RlWiThkkjzt
 x/Nbb3LTze6xTdQmt3F82mgXbeMq8AvaYe6p4f1yZFOinIpz6fksWQkyU
 U815a2ilfBCpc9ZUnQqOB7VYiE1m8AYVpQoQUyiIyqdoo5yQ1+3gqJeQG
 Jtm4STSctwava51FonFOWQdCGddXvBrbMuhcRaeQc5zabiyvnVlqhApex g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051925"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051925"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146059"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146059"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:47 +0300
Message-Id: <20230420124050.3617608-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/mtl: Power up TCSS
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

Add register writes to enable powering up Type-C subsystem i.e. TCSS.
For MeteorLake we need to request TCSS to power up and check the TCSS
power state after 500 us.

In addition, for PICA we need to set/clear the Type-C PHY ownnership
bit when Type-C device is connected/disconnected.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  19 ++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   4 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c      | 199 ++++++++++++++++++-
 5 files changed, 216 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dc0555505e61..97d80adb921f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2884,6 +2884,25 @@ void intel_mtl_pll_disable(struct intel_encoder *encoder)
 		intel_cx0pll_disable(encoder);
 }
 
+enum icl_port_dpll_id
+intel_mtl_port_pll_type(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	/*
+	 * TODO: Determine the PLL type from the SW state, once MTL PLL
+	 * handling is done via the standard shared DPLL framework.
+	 */
+	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+
+	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
+	    clock == XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
+		return ICL_PORT_DPLL_MG_PHY;
+	else
+		return ICL_PORT_DPLL_DEFAULT;
+}
+
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc_state *new_crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c1b8f7980f69..f99809af257d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -16,12 +16,16 @@
 struct drm_i915_private;
 struct intel_encoder;
 struct intel_crtc_state;
+enum icl_port_dpll_id;
 enum phy;
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 void intel_mtl_pll_disable(struct intel_encoder *encoder);
+enum icl_port_dpll_id
+intel_mtl_port_pll_type(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state);
 void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct intel_c10pll_state *pll_state);
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
 void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8f0f858cde31..55f36d9d509c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4784,6 +4784,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
+		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = mtl_ddi_get_config;
 	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c264c17b6e4..e70bdf0e06f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1757,7 +1757,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	if (IS_DG2(dev_priv))
 		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3b60995e9dfb..951b12ac51dc 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display.h"
@@ -59,6 +60,7 @@ static enum intel_display_power_domain
 tc_phy_cold_off_domain(struct intel_tc_port *);
 static u32 tc_phy_hpd_live_status(struct intel_tc_port *tc);
 static bool tc_phy_is_ready(struct intel_tc_port *tc);
+static bool tc_phy_wait_for_ready(struct intel_tc_port *tc);
 static enum tc_port_mode tc_phy_get_current_mode(struct intel_tc_port *tc);
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
@@ -141,15 +143,23 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
  *
  * POWER_DOMAIN_TC_COLD_OFF:
  * -------------------------
- * TGL/legacy, DP-alt modes:
+ * ICL/DP-alt, TBT mode:
+ *   - TCSS/TBT: block TC-cold power state for using the (direct or
+ *     TBT DP-IN) AUX and main lanes.
+ *
+ * TGL/all modes:
  *   - TCSS/IOM,FIA access for PHY ready, owned and HPD live state
- *   - TCSS/PHY: block TC-cold power state for using the PHY AUX and
- *     main lanes.
+ *   - TCSS/PHY: block TC-cold power state for using the (direct or
+ *     TBT DP-IN) AUX and main lanes.
  *
- * ICL, TGL, ADLP/TBT mode:
- *   - TCSS/IOM,FIA access for HPD live state
+ * ADLP/TBT mode:
  *   - TCSS/TBT: block TC-cold power state for using the (TBT DP-IN)
  *     AUX and main lanes.
+ *
+ * XELPDP+/all modes:
+ *   - TCSS/IOM,FIA access for PHY ready, owned state
+ *   - TCSS/PHY: block TC-cold power state for using the (direct or
+ *     TBT DP-IN) AUX and main lanes.
  */
 bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 {
@@ -872,6 +882,172 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
 	.init = adlp_tc_phy_init,
 };
 
+/*
+ * XELPDP TC PHY handlers
+ * ----------------------
+ */
+static bool
+xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
+
+	assert_tc_cold_blocked(tc);
+
+	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TCSS_POWER_STATE;
+}
+
+static bool
+xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+
+	if (wait_for(xelpdp_tc_phy_tcss_power_is_enabled(tc) == enabled, 5)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: timeout waiting for TCSS power to get %s\n",
+			    enabled ? "enabled" : "disabled",
+			    tc->port_name);
+		return false;
+	}
+
+	return true;
+}
+
+static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
+	u32 val;
+
+	assert_tc_cold_blocked(tc);
+
+	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	if (enable)
+		val |= XELPDP_TCSS_POWER_REQUEST;
+	else
+		val &= ~XELPDP_TCSS_POWER_REQUEST;
+	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+}
+
+static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+
+	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
+
+	if ((!tc_phy_wait_for_ready(tc) ||
+	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
+	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
+		if (enable) {
+			__xelpdp_tc_phy_enable_tcss_power(tc, false);
+			xelpdp_tc_phy_wait_for_tcss_power(tc, false);
+		}
+
+		return false;
+	}
+
+	return true;
+}
+
+static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
+	u32 val;
+
+	assert_tc_cold_blocked(tc);
+
+	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	if (take)
+		val |= XELPDP_TC_PHY_OWNERSHIP;
+	else
+		val &= ~XELPDP_TC_PHY_OWNERSHIP;
+	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+}
+
+static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	enum port port = tc->dig_port->base.port;
+
+	assert_tc_cold_blocked(tc);
+
+	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TC_PHY_OWNERSHIP;
+}
+
+static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	intel_wakeref_t tc_cold_wref;
+	enum intel_display_power_domain domain;
+
+	tc_cold_wref = __tc_cold_block(tc, &domain);
+
+	tc->mode = tc_phy_get_current_mode(tc);
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		tc->lock_wakeref = tc_cold_block(tc);
+
+	drm_WARN_ON(&i915->drm,
+		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
+		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
+
+	__tc_cold_unblock(tc, domain, tc_cold_wref);
+}
+
+static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
+{
+	tc->lock_wakeref = tc_cold_block(tc);
+
+	if (tc->mode == TC_PORT_TBT_ALT)
+		return true;
+
+	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
+		goto out_unblock_tccold;
+
+	xelpdp_tc_phy_take_ownership(tc, true);
+
+	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
+		goto out_release_phy;
+
+	return true;
+
+out_release_phy:
+	xelpdp_tc_phy_take_ownership(tc, false);
+	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
+
+out_unblock_tccold:
+	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+
+	return false;
+}
+
+static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
+{
+	switch (tc->mode) {
+	case TC_PORT_LEGACY:
+	case TC_PORT_DP_ALT:
+		xelpdp_tc_phy_take_ownership(tc, false);
+		xelpdp_tc_phy_enable_tcss_power(tc, false);
+		fallthrough;
+	case TC_PORT_TBT_ALT:
+		tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
+		break;
+	default:
+		MISSING_CASE(tc->mode);
+	}
+}
+
+static const struct intel_tc_phy_ops xelpdp_tc_phy_ops = {
+	.cold_off_domain = tgl_tc_phy_cold_off_domain,
+	.hpd_live_status = adlp_tc_phy_hpd_live_status,
+	.is_ready = adlp_tc_phy_is_ready,
+	.is_owned = xelpdp_tc_phy_is_owned,
+	.get_hw_state = xelpdp_tc_phy_get_hw_state,
+	.connect = xelpdp_tc_phy_connect,
+	.disconnect = xelpdp_tc_phy_disconnect,
+	.init = adlp_tc_phy_init,
+};
+
 /*
  * Generic TC PHY handlers
  * -----------------------
@@ -945,13 +1121,18 @@ static bool tc_phy_is_connected(struct intel_tc_port *tc,
 	return is_connected;
 }
 
-static void tc_phy_wait_for_ready(struct intel_tc_port *tc)
+static bool tc_phy_wait_for_ready(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 
-	if (wait_for(tc_phy_is_ready(tc), 100))
+	if (wait_for(tc_phy_is_ready(tc), 500)) {
 		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
 			tc->port_name);
+
+		return false;
+	}
+
+	return true;
 }
 
 static enum tc_port_mode
@@ -1442,7 +1623,9 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
 	dig_port->tc = tc;
 	tc->dig_port = dig_port;
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(i915) >= 14)
+		tc->phy_ops = &xelpdp_tc_phy_ops;
+	else if (DISPLAY_VER(i915) >= 13)
 		tc->phy_ops = &adlp_tc_phy_ops;
 	else if (DISPLAY_VER(i915) >= 12)
 		tc->phy_ops = &tgl_tc_phy_ops;
-- 
2.34.1

