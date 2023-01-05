Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF1065EB7F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504B010E710;
	Thu,  5 Jan 2023 13:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E619B10E72A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923619; x=1704459619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7hJTViX3UYeKKDv3aw7TFlvNXs1URRO34ouIelenOHY=;
 b=iQ0yKk9qm3DWGZcvFAz3go5C6KS/SrDZBmzyUNuxcz+OPAht43au3Uvo
 p8O6aVBi86x679LSBzeRoaM6aFU9K7CSBYoctZa5UdF56mhaPyLObBhKf
 qE4eOFTJvId7SqLjnp95O248xdeM7Dhj4s/wBsuv3pQPbC61X/YLylLIR
 mY/EUF/AehNCfyVZOi1tykcmDoIG2s6fCmyJ32FLLn4v996phr/6vn3Pq
 zjwK3dS4F0IScIh3hddzTKJMAgHkSnjiazKLOLRWmjdGHFGuDRxdRa8g6
 Npcy7wMlIJqkZR2bYHe5xnU8lIVcAYcI6Rt4IKLTZdQzGVpsL+wRSMYCD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697947"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697947"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541385"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541385"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:15 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:44 +0200
Message-Id: <20230105125446.960504-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/21] drm/i915/mtl: Power up TCSS
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add register writes to enable powering up Type-C subsystem i.e. TCSS.
For MeteorLake we need to request TCSS to power up and check the TCSS
power state after 500 us.

In addition, for PICA we need to set/clear the Type-C PHY ownnership
bit when Type-C device is connected/disconnected.

v2: Call tcss power request with correct parameter.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-20-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c      | 117 ++++++++++++++++++-
 2 files changed, 114 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 302c795c2e3f..75fcc0ef5ced 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2119,7 +2119,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	if (IS_DG2(dev_priv))
 		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f45328712bff..74d8d8e0e0df 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
@@ -300,7 +301,7 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 13)
 		return adl_tc_port_live_status_mask(dig_port);
 
 	return icl_tc_port_live_status_mask(dig_port);
@@ -354,11 +355,69 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	return val & TCSS_DDI_STATUS_READY;
 }
 
+static bool xelpdp_wait_phy_status_complete(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+
+	if (intel_wait_for_register(&i915->uncore,
+				    TCSS_DDI_STATUS(tc_port),
+				    TCSS_DDI_STATUS_READY,
+				    TCSS_DDI_STATUS_READY,
+				    1)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: PHY in TCCOLD, assuming not complete\n",
+			    dig_port->tc_port_name);
+		return false;
+	}
+
+	return true;
+}
+
+static bool xelpdp_wait_for_tcss_power(struct intel_digital_port *dig_port,
+				       bool enabled)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (intel_wait_for_register(&i915->uncore,
+				    XELPDP_PORT_BUF_CTL1(dig_port->base.port),
+				    XELPDP_TCSS_POWER_STATE,
+				    enabled ? XELPDP_TCSS_POWER_STATE : 0,
+				    5)) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: TCSS power state not as expected\n",
+			    dig_port->tc_port_name);
+		return false;
+	}
+
+	return true;
+}
+
+static bool xelpdp_tc_power_request(struct intel_digital_port *dig_port, bool request)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+	u32 val;
+
+	val = intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port));
+	if (request)
+		val |= XELPDP_TCSS_POWER_REQUEST;
+	else
+		val &= ~XELPDP_TCSS_POWER_REQUEST;
+	intel_uncore_write(uncore, XELPDP_PORT_BUF_CTL1(port), val);
+
+	return xelpdp_wait_phy_status_complete(dig_port) &&
+	       xelpdp_wait_for_tcss_power(dig_port, request);
+}
+
 static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_wait_phy_status_complete(dig_port);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_status_complete(dig_port);
 
 	return icl_tc_phy_status_complete(dig_port);
@@ -400,11 +459,31 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	return true;
 }
 
+static bool xelpdp_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+					 bool take)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+	u32 val;
+
+	val = intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port));
+	if (take)
+		val |= XELPDP_TC_PHY_OWNERSHIP;
+	else
+		val &= ~XELPDP_TC_PHY_OWNERSHIP;
+	intel_uncore_write(uncore, XELPDP_PORT_BUF_CTL1(port), val);
+
+	return true;
+}
+
 static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_phy_take_ownership(dig_port, take);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_take_ownership(dig_port, take);
 
 	return icl_tc_phy_take_ownership(dig_port, take);
@@ -436,11 +515,23 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
+static bool xelpdp_tc_phy_is_owned(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_uncore *uncore = &i915->uncore;
+	enum port port = dig_port->base.port;
+
+	return intel_uncore_read(uncore, XELPDP_PORT_BUF_CTL1(port)) &
+	       XELPDP_TC_PHY_OWNERSHIP;
+}
+
 static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 14)
+		return xelpdp_tc_phy_is_owned(dig_port);
+	else if (IS_ALDERLAKE_P(i915))
 		return adl_tc_phy_is_owned(dig_port);
 
 	return icl_tc_phy_is_owned(dig_port);
@@ -464,6 +555,11 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	u32 live_status_mask;
 	int max_lanes;
 
+	if (DISPLAY_VER(i915) >= 14) {
+		if (!xelpdp_tc_power_request(dig_port, true))
+			goto out_release_phy;
+	}
+
 	if (!tc_phy_status_complete(dig_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    dig_port->tc_port_name);
@@ -514,6 +610,10 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 
 out_release_phy:
 	tc_phy_take_ownership(dig_port, false);
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
+
 out_set_tbt_alt_mode:
 	dig_port->tc_mode = TC_PORT_TBT_ALT;
 }
@@ -524,6 +624,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
  */
 static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	switch (dig_port->tc_mode) {
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
@@ -537,6 +639,9 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	default:
 		MISSING_CASE(dig_port->tc_mode);
 	}
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
 }
 
 static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
@@ -886,6 +991,10 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 	if (!INTEL_INFO(i915)->display.has_modular_fia)
 		return false;
 
+	/* for MTL, FIA is always modular */
+	if (DISPLAY_VER(i915) >= 14)
+		return true;
+
 	mutex_lock(&dig_port->tc_lock);
 	wakeref = tc_cold_block(dig_port, &domain);
 	val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
-- 
2.34.1

