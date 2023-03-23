Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4875B6C6AB0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87ACC10EABA;
	Thu, 23 Mar 2023 14:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6576E10EAB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581251; x=1711117251;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RZk9zKgWKeqUDxhj1tgH0Z9nFlbIRp6pNpLTg80vPqQ=;
 b=l97PnpMIAowrNK6phdO9g9uISSLe0SrkzId3LGoUUD7sbPlE88afhFcQ
 XtySkUIFfgUdcbEPOwCjvbLSSvKhOcSTrNyXPxOLaYYDGwRRh57S58ie6
 qBomXZXPhkdgSmFYAzkTdZuMkeC4TsC4DLpvMcsAdmNs9+1vUkeQbN+sH
 vENNXtHnadoVCsrLzHevxf+xs6zYTFZKa01YPggMnf2kCwPoz//HSiAUQ
 6uH3xzky4EI6/yr+/J/fofTQEfSEk+Gh3WZXKKbe4YvVUYPoy+qb6nuqg
 0raFErNOdIUErzo3A6i5qfGv7tH5d9523TwD5PYTIy+X/GTD4KpbArr+E g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892284"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892284"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722655"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722655"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:17 +0200
Message-Id: <20230323142035.1432621-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/29] drm/i915/tc: Add generic TC PHY
 connect/disconnect handlers
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

Add generic handlers to connect/disconnect a PHY.

Setting the TC mode to the target mode deducted from the HPD state and -
if connecting to this mode fails - falling back to connecting to the
default (TBT) mode are common to all platforms; move the logic for this
from the ICL specific connect / disconnect handlers to the generic ones.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 65 +++++++++++++++----------
 1 file changed, 39 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index aa39810962592..9179f86287ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -434,41 +434,35 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
  * connect and disconnect to cleanly transfer ownership with the controller and
  * set the type-C power state.
  */
-static void icl_tc_phy_connect(struct intel_tc_port *tc,
+static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 			       int required_lanes)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
-	u32 live_status_mask;
 	int max_lanes;
 
+	if (tc->mode == TC_PORT_TBT_ALT)
+		return true;
+
 	if (!tc_phy_is_ready(tc) &&
 	    !drm_WARN_ON(&i915->drm, tc->legacy_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    tc->port_name);
-		goto out_set_tbt_alt_mode;
-	}
-
-	live_status_mask = tc_phy_hpd_live_status(tc);
-	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY))) &&
-	    !tc->legacy_port) {
-		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
-			    tc->port_name, live_status_mask);
-		goto out_set_tbt_alt_mode;
+		return false;
 	}
 
 	if (!tc_phy_take_ownership(tc, true) &&
 	    !drm_WARN_ON(&i915->drm, tc->legacy_port))
-		goto out_set_tbt_alt_mode;
+		return false;
 
 	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
 	if (tc->legacy_port) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
-		tc->mode = TC_PORT_LEGACY;
-
-		return;
+		return true;
 	}
 
+	drm_WARN_ON(&i915->drm, tc->mode != TC_PORT_DP_ALT);
+
 	/*
 	 * Now we have to re-check the live state, in case the port recently
 	 * became disconnected. Not necessary for legacy mode.
@@ -487,14 +481,12 @@ static void icl_tc_phy_connect(struct intel_tc_port *tc,
 		goto out_release_phy;
 	}
 
-	tc->mode = TC_PORT_DP_ALT;
-
-	return;
+	return true;
 
 out_release_phy:
 	tc_phy_take_ownership(tc, false);
-out_set_tbt_alt_mode:
-	tc->mode = TC_PORT_TBT_ALT;
+
+	return false;
 }
 
 /*
@@ -509,9 +501,6 @@ static void icl_tc_phy_disconnect(struct intel_tc_port *tc)
 		tc_phy_take_ownership(tc, false);
 		fallthrough;
 	case TC_PORT_TBT_ALT:
-		tc->mode = TC_PORT_DISCONNECTED;
-		fallthrough;
-	case TC_PORT_DISCONNECTED:
 		break;
 	default:
 		MISSING_CASE(tc->mode);
@@ -817,6 +806,30 @@ tc_phy_get_target_mode(struct intel_tc_port *tc)
 	return hpd_mask_to_target_mode(tc, live_status_mask);
 }
 
+static void tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
+{
+	struct drm_i915_private *i915 = tc_to_i915(tc);
+	bool connected;
+
+	tc->mode = tc_phy_get_target_mode(tc);
+
+	connected = icl_tc_phy_connect(tc, required_lanes);
+	if (!connected && tc->mode != default_tc_mode(tc)) {
+		tc->mode = default_tc_mode(tc);
+		connected = icl_tc_phy_connect(tc, required_lanes);
+	}
+
+	drm_WARN_ON(&i915->drm, !connected);
+}
+
+static void tc_phy_disconnect(struct intel_tc_port *tc)
+{
+	if (tc->mode != TC_PORT_DISCONNECTED) {
+		icl_tc_phy_disconnect(tc);
+		tc->mode = TC_PORT_DISCONNECTED;
+	}
+}
+
 static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 				     int required_lanes, bool force_disconnect)
 {
@@ -834,9 +847,9 @@ static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 		drm_WARN_ON(&i915->drm, aux_powered);
 	}
 
-	icl_tc_phy_disconnect(tc);
+	tc_phy_disconnect(tc);
 	if (!force_disconnect)
-		icl_tc_phy_connect(tc, required_lanes);
+		tc_phy_connect(tc, required_lanes);
 
 	drm_dbg_kms(&i915->drm, "Port %s: TC port mode reset (%s -> %s)\n",
 		    tc->port_name,
@@ -1015,7 +1028,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 				    "Port %s: PHY left in %s mode on disabled port, disconnecting it\n",
 				    tc->port_name,
 				    tc_port_mode_name(tc->init_mode));
-		icl_tc_phy_disconnect(tc);
+		tc_phy_disconnect(tc);
 		__intel_tc_port_put_link(tc);
 
 		tc_cold_unblock(tc, tc->lock_power_domain,
-- 
2.37.1

