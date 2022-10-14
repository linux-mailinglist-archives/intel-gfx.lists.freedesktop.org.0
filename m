Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE495FEE31
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2072E10EAEF;
	Fri, 14 Oct 2022 12:52:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9890010EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751940; x=1697287940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OWD5UvoSavBcLChNsVuJFI3xwSwudexA4VqY6JgS3nI=;
 b=Durh48KSod8pzmFhqHCP7BRsglr9q0SEIL8v/QS6rsk767RxH5Q1dCwT
 cINWjGc2t2RpkJYE14ymPaVXk+bBHGWsqF44BEoFrRDTwUfKYvkrjdCnN
 UHraryllCPLt61C7mLpBCevu0tgiAuLlCa809Uf3QamYYmETLGwH6d1eM
 y7947n+dO+ZzYEep4sQ054Ocue55fSEHVFfFxA1jkGjRGxOCBWDwkOleb
 iSF5WDMwV5jwszRE7m5xaY3B+f4rKtv8vcxE+72iUW00NOvLpxjzwBRDg
 3svRsPLl/Xc1Wtj/ID9f+0XU6wT3YdDNSfOCzOQ3dtxXJKy2Tg3iiQgcH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104696"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104696"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739825"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739825"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:19 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:39 +0300
Message-Id: <20221014124740.774835-20-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/20] drm/i915/mtl: Power up TCSS
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
---
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c      | 115 ++++++++++++++++++-
 2 files changed, 112 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d63b1adef48..384c503f37ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2112,7 +2112,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	if (IS_DG2(dev_priv))
 		/* DG2's "TC1" output uses a SNPS PHY */
 		return false;
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv) || IS_METEORLAKE(dev_priv))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8cecd41ed003..dba10bcc6b66 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_cx0_reg_defs.h"
 #include "intel_display.h"
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
@@ -308,7 +309,7 @@ static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) >= 13)
 		return adl_tc_port_live_status_mask(dig_port);
 
 	return icl_tc_port_live_status_mask(dig_port);
@@ -365,11 +366,69 @@ static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
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
+				    1)) {
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
+	       xelpdp_wait_for_tcss_power(dig_port, true);
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
@@ -415,11 +474,31 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
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
@@ -454,11 +533,23 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
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
@@ -482,6 +573,9 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 	u32 live_status_mask;
 	int max_lanes;
 
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, true);
+
 	if (!tc_phy_status_complete(dig_port)) {
 		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
 			    dig_port->tc_port_name);
@@ -532,6 +626,10 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
 
 out_release_phy:
 	tc_phy_take_ownership(dig_port, false);
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
+
 out_set_tbt_alt_mode:
 	dig_port->tc_mode = TC_PORT_TBT_ALT;
 }
@@ -542,6 +640,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
  */
 static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	switch (dig_port->tc_mode) {
 	case TC_PORT_LEGACY:
 	case TC_PORT_DP_ALT:
@@ -555,6 +655,9 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	default:
 		MISSING_CASE(dig_port->tc_mode);
 	}
+
+	if (DISPLAY_VER(i915) >= 14)
+		xelpdp_tc_power_request(dig_port, false);
 }
 
 static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
@@ -904,6 +1007,10 @@ tc_has_modular_fia(struct drm_i915_private *i915, struct intel_digital_port *dig
 	if (!INTEL_INFO(i915)->display.has_modular_fia)
 		return false;
 
+	/* for MTL, FIA is always modular */
+	if (DISPLAY_VER(i915) >= 14)
+		return true;
+
 	mutex_lock(&dig_port->tc_lock);
 	wakeref = tc_cold_block(dig_port, &domain);
 	val = intel_uncore_read(&i915->uncore, PORT_TX_DFLEXDPSP(FIA1));
-- 
2.34.1

