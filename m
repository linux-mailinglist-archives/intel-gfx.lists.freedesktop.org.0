Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9E46BD117
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F4110ED00;
	Thu, 16 Mar 2023 13:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C37710E221
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974046; x=1710510046;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YB0GmD7r4PPQWFDA2fot8E8Daow62UewZkRkO9RwTKA=;
 b=FmV83b1jmtzmDYf0YYRwxsfpg6mvbR3N9XzOP0UxwtnSo6S50Ctfg6ts
 Pkq8UEM5GM189UCz1LnWAfbC0w6Od57nyUWozYZD6Myylz8DkZmYqysFP
 zA/WN3W/zidGJajCEv6/zeXw6Q5OjdUPsCmSwVgrXTciPcWPIdiTbXoc6
 zzf+J6az6FDZMXjVmi9w5dAXoLmvaIDYP/OkvCpALopTk9egDcsIWdiYb
 mjfNdPqWP0B0NKgy19y7FkwRDBIE/Bib7EHNfkkWqHaT+Z13/99APeiBC
 FMQT10CHIIzIj7BzkA6BrO/IDKvmP6tueB3sq/Z7dhZr6TB+nAFoF7Pu1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524867"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524867"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171287"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171287"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:24 +0200
Message-Id: <20230316131724.359612-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/14] drm/i915/tc: Check the PLL type used by
 an enabled TC port
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 45 ++++++++++++++-----------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8481018d0fdaa..5f924608a523a 100644
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
@@ -877,15 +878,19 @@ static bool tc_port_has_active_links(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
+	enum icl_port_dpll_id pll_type = ICL_PORT_DPLL_DEFAULT;
 	int active_links = 0;
 
 	if (dig_port->dp.is_mst) {
+		/* TODO: get the PLL type for MST, once HW readout is done for it. */
 		active_links = intel_dp_mst_encoder_active_links(dig_port);
 	} else if (crtc && crtc->active) {
+		pll_type = intel_ddi_port_pll_type(encoder,
+						   to_intel_crtc_state(crtc->base.state));
 		active_links = 1;
 	}
 
-	if (active_links && !icl_tc_phy_is_connected(dig_port))
+	if (active_links && !tc_phy_is_connected(dig_port, pll_type))
 		drm_err(&i915->drm,
 			"Port %s: PHY disconnected with %d active link(s)\n",
 			dig_port->tc_port_name, active_links);
-- 
2.37.1

