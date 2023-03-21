Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F536C3D51
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 23:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55CA10E883;
	Tue, 21 Mar 2023 22:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B98A10E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 22:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679436070; x=1710972070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SQo/itz14CpgkjPYNXiyYmj1//jhx9qIGkCHCK41bos=;
 b=I9rXOJ5g7D/YcGOJm1mfqoq+mD9b1smbgo4LoRCoatmTKdl7snVklnjd
 fboCRICyo5w6xPIEWcMQQsi0rfCG2zs/h7Q5pOZSN8am9XQymM0PGzHi8
 jGn6a1+W2r+VfQo+veSQF7FifGzMG4hrfW99a4kXr4FaPQ+HnH6gT6hWW
 CKbfoQKAQgqf50srHoy8WlV7BpgsodYRfIB+G4y7pqZd4Wmp6AmcSlBxw
 OR6ZtvLtVPj9CZat/BQP2IPGFfjmU6KIIq74dQs/hyuL8PJHxaKxxbdwP
 jJfQchJdLzJWxLwMsmNaR/Mr0DTFjXiT7IP2pAuH7JpoqXI9j1WzfKLjx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336573816"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="336573816"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="805584649"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="805584649"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 00:01:01 +0200
Message-Id: <20230321220101.983366-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-15-imre.deak@intel.com>
References: <20230316131724.359612-15-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/14] drm/i915/tc: Check the PLL type used
 by an enabled TC port
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

The current way to determine during HW state sanitization if a PHY is
connected in the expected way doesn't work in all cases. The check for
this considers only the PHY ready/owned state and the initial TC mode
which was determined earlier by the TC port HW readout - using the
sink's HPD and the same PHY ready/owned states.

For instance for an enabled DP-alt/TBT port without the PHY ready/owned
flags set the initial mode will be TBT, and this will be regarded as a
valid PHY state. However it's possible that the port is actually enabled
in DP-alt mode, but for some reason the PHY ownership was not acquired.

Make sure the driver can detect invalid PHY states as in the above
example by checking the PHY ready/owned state wrt. the PLL type used.
This should be the TBT PLL if the PHY is not owned and the MG (non-TBT)
PLL if the PHY is owned.

v2: Rebased on change passing crtc_state in the previous patch.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 44 ++++++++++++++-----------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c5bfd9f11d7de..bd8c9df5f98fe 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
@@ -568,29 +569,29 @@ static bool tc_phy_is_ready_and_owned(struct intel_digital_port *dig_port,
 	return phy_is_ready && phy_is_owned;
 }
 
-static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
+static bool tc_phy_is_connected(struct intel_digital_port *dig_port,
+				enum icl_port_dpll_id port_pll_type)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	if (!tc_phy_status_complete(dig_port)) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY status not complete\n",
-			    dig_port->tc_port_name);
-		return dig_port->tc_mode == TC_PORT_TBT_ALT;
-	}
-
-	/* On ADL-P the PHY complete flag is set in TBT mode as well. */
-	if (IS_ALDERLAKE_P(i915) && dig_port->tc_mode == TC_PORT_TBT_ALT)
-		return true;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool phy_is_ready = tc_phy_status_complete(dig_port);
+	bool phy_is_owned = tc_phy_is_owned(dig_port);
+	bool is_connected;
 
-	if (!tc_phy_is_owned(dig_port)) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY not owned\n",
-			    dig_port->tc_port_name);
+	if (tc_phy_is_ready_and_owned(dig_port, phy_is_ready, phy_is_owned))
+		is_connected = port_pll_type == ICL_PORT_DPLL_MG_PHY;
+	else
+		is_connected = port_pll_type == ICL_PORT_DPLL_DEFAULT;
 
-		return false;
-	}
+	drm_dbg_kms(&i915->drm,
+		    "Port %s: PHY connected: %s (ready: %s, owned: %s, pll_type: %s)\n",
+		    dig_port->tc_port_name,
+		    str_yes_no(is_connected),
+		    str_yes_no(phy_is_ready),
+		    str_yes_no(phy_is_owned),
+		    port_pll_type == ICL_PORT_DPLL_DEFAULT ? "tbt" : "non-tbt");
 
-	return dig_port->tc_mode == TC_PORT_DP_ALT ||
-	       dig_port->tc_mode == TC_PORT_LEGACY;
+	return is_connected;
 }
 
 static void tc_phy_wait_for_ready(struct intel_digital_port *dig_port)
@@ -876,15 +877,18 @@ static bool tc_port_has_active_links(struct intel_digital_port *dig_port,
 				     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum icl_port_dpll_id pll_type = ICL_PORT_DPLL_DEFAULT;
 	int active_links = 0;
 
 	if (dig_port->dp.is_mst) {
+		/* TODO: get the PLL type for MST, once HW readout is done for it. */
 		active_links = intel_dp_mst_encoder_active_links(dig_port);
 	} else if (crtc_state && crtc_state->hw.active) {
+		pll_type = intel_ddi_port_pll_type(&dig_port->base, crtc_state);
 		active_links = 1;
 	}
 
-	if (active_links && !icl_tc_phy_is_connected(dig_port))
+	if (active_links && !tc_phy_is_connected(dig_port, pll_type))
 		drm_err(&i915->drm,
 			"Port %s: PHY disconnected with %d active link(s)\n",
 			dig_port->tc_port_name, active_links);
-- 
2.37.1

