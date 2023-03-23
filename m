Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6766C6AAB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D5510EAB7;
	Thu, 23 Mar 2023 14:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530F710EAAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581244; x=1711117244;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=StCEG513McSo+rRPEBSHm01JMWRfNXnELheHPaDXT8M=;
 b=j/MBXH1K2r+Os/W/Zb6Vw+QB7XAiiSzWnp/wAW/jEOoKUH1vMG85ozT9
 k67hxxxDA7O+T/XCPjlgKjq1q0W+9AJYYQdfs46QVKjfKbLjS6M/9De97
 qdyM4fFdu3hzxh5Hpmu9teBoVl0chtB4rUDWejN8qBbeCxSnVAagcUHuu
 KuVXESEDQEmbYl9pUJYhjAdcKOhJl2X/d7iXKPKQa2LYMYns+r6+JjwKO
 phs8M2gx+9O19Hnx1s94F7fTvTJ7bS1fJyFd02pKAbqNrktE5PtcXmV09
 pNjxDCGG30nefT+DMbu9UUpHltY7Dq90R32XBzhesAmmWN7vb4DBuiA+g w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892257"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892257"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722626"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722626"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:10 +0200
Message-Id: <20230323142035.1432621-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/29] drm/i915/tc: Use the tc_phy prefix for
 all TC PHY functions
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

For consistency use the tc_phy prefix for all TC PHY functions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 9fecf24b69c16..d2afe8b65beee 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -15,7 +15,7 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
-static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port);
+static u32 tc_phy_hpd_live_status(struct intel_digital_port *dig_port);
 static bool tc_phy_is_ready(struct intel_digital_port *dig_port);
 static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take);
 
@@ -264,7 +264,7 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
  * ICL TC PHY handlers
  * -------------------
  */
-static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+static u32 icl_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
@@ -384,7 +384,7 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 		goto out_set_tbt_alt_mode;
 	}
 
-	live_status_mask = tc_port_live_status_mask(dig_port);
+	live_status_mask = tc_phy_hpd_live_status(dig_port);
 	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY))) &&
 	    !dig_port->tc_legacy_port) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
@@ -408,7 +408,7 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	 * Now we have to re-check the live state, in case the port recently
 	 * became disconnected. Not necessary for legacy mode.
 	 */
-	if (!(tc_port_live_status_mask(dig_port) & BIT(TC_PORT_DP_ALT))) {
+	if (!(tc_phy_hpd_live_status(dig_port) & BIT(TC_PORT_DP_ALT))) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY sudden disconnect\n",
 			    dig_port->tc_port_name);
 		goto out_release_phy;
@@ -457,7 +457,7 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
  * ADLP TC PHY handlers
  * --------------------
  */
-static u32 adlp_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+static u32 adlp_tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
@@ -535,14 +535,14 @@ static bool adlp_tc_phy_is_owned(struct intel_digital_port *dig_port)
  * Generic TC PHY handlers
  * -----------------------
  */
-static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
+static u32 tc_phy_hpd_live_status(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
 	if (IS_ALDERLAKE_P(i915))
-		return adlp_tc_port_live_status_mask(dig_port);
+		return adlp_tc_phy_hpd_live_status(dig_port);
 
-	return icl_tc_port_live_status_mask(dig_port);
+	return icl_tc_phy_hpd_live_status(dig_port);
 }
 
 static bool tc_phy_is_ready(struct intel_digital_port *dig_port)
@@ -631,7 +631,7 @@ hpd_mask_to_tc_mode(u32 live_status_mask)
 static enum tc_port_mode
 tc_phy_hpd_live_mode(struct intel_digital_port *dig_port)
 {
-	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+	u32 live_status_mask = tc_phy_hpd_live_status(dig_port);
 
 	return hpd_mask_to_tc_mode(live_status_mask);
 }
@@ -678,7 +678,7 @@ get_tc_mode_in_phy_not_owned_state(struct intel_digital_port *dig_port,
 }
 
 static enum tc_port_mode
-intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
+tc_phy_get_current_mode(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port_mode live_mode = tc_phy_hpd_live_mode(dig_port);
@@ -735,9 +735,9 @@ hpd_mask_to_target_mode(struct intel_digital_port *dig_port, u32 live_status_mas
 }
 
 static enum tc_port_mode
-intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
+tc_phy_get_target_mode(struct intel_digital_port *dig_port)
 {
-	u32 live_status_mask = tc_port_live_status_mask(dig_port);
+	u32 live_status_mask = tc_phy_hpd_live_status(dig_port);
 
 	return hpd_mask_to_target_mode(dig_port, live_status_mask);
 }
@@ -770,7 +770,7 @@ static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
 
 static bool intel_tc_port_needs_reset(struct intel_digital_port *dig_port)
 {
-	return intel_tc_port_get_target_mode(dig_port) != dig_port->tc_mode;
+	return tc_phy_get_target_mode(dig_port) != dig_port->tc_mode;
 }
 
 static void intel_tc_port_update_mode(struct intel_digital_port *dig_port,
@@ -847,7 +847,7 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 
 	tc_cold_wref = tc_cold_block(dig_port, &domain);
 
-	dig_port->tc_mode = intel_tc_port_get_current_mode(dig_port);
+	dig_port->tc_mode = tc_phy_get_current_mode(dig_port);
 	/*
 	 * Save the initial mode for the state check in
 	 * intel_tc_port_sanitize_mode().
@@ -976,7 +976,7 @@ bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
 
 	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
 
-	return tc_port_live_status_mask(dig_port) & BIT(dig_port->tc_mode);
+	return tc_phy_hpd_live_status(dig_port) & BIT(dig_port->tc_mode);
 }
 
 bool intel_tc_port_connected(struct intel_encoder *encoder)
-- 
2.37.1

