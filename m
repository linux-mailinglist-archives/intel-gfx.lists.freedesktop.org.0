Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8256C6AAE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:20:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B56882D0;
	Thu, 23 Mar 2023 14:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6089B10EAAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581241; x=1711117241;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KzsWlF+nOIKQ5zOzxkd9VLc5HXl434Q+HgFK745iA4M=;
 b=QDnybw6DmF2p+Jfh3WapTWfBxjq9kIswvw5LWv7/k/I4a/HkSuLs4jwI
 LTsZmB4m3MbNs5Q/Z3mKXRZ+KCWoawJ+lRI5aCqZCxGnpFD7652ILewtQ
 VKWOEOJi442FwBvdo7rRpLVkF6tmXDtZ9stg44eSFQ0H5L9Mm18bUedk5
 Vquuf7JtbTC3/n+q+JaW6vII0mPs5KIThAm/8ZveHqZks1z1QYu2e4gM4
 RlbbnZgzeHEWAB/S8/g/hhPd/Ya1xm37K9hD0jwrfbfxFbyntFkbwDm3J
 KtDYJuLOVQUYXF09QXCJLFkb6Egd+W/L1KA5vjwZqoxcNer3YQB/J6q4Y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892247"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892247"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722615"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722615"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:07 +0200
Message-Id: <20230323142035.1432621-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/29] drm/i915/tc: Group the TC PHY setup/query
 functions per platform
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

Arrange the TC PHY HW state setup/query functions into platform
specific and generic groups. This prepares for upcoming patches adding
generic TC PHY handlers and platform specific hooks for these,
replacing the corresponding if ladders.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 244 +++++++++++++-----------
 1 file changed, 130 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index bd8c9df5f98fe..b6e425c44fcb9 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -15,6 +15,10 @@
 #include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
 
+static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port);
+static bool tc_phy_status_complete(struct intel_digital_port *dig_port);
+static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take);
+
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
 	static const char * const names[] = {
@@ -256,6 +260,10 @@ static void tc_port_fixup_legacy_flag(struct intel_digital_port *dig_port,
 	dig_port->tc_legacy_port = !dig_port->tc_legacy_port;
 }
 
+/**
+ * ICL TC PHY handlers
+ * -------------------
+ */
 static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -287,44 +295,6 @@ static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
 	return mask;
 }
 
-static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
-	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
-	u32 val, mask = 0;
-
-	/*
-	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
-	 * registers in IOM. Note that this doesn't apply to PHY and FIA
-	 * registers.
-	 */
-	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
-	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
-		mask |= BIT(TC_PORT_DP_ALT);
-	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
-		mask |= BIT(TC_PORT_TBT_ALT);
-
-	if (intel_de_read(i915, SDEISR) & isr_bit)
-		mask |= BIT(TC_PORT_LEGACY);
-
-	/* The sink can be connected only in a single mode. */
-	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
-		tc_port_fixup_legacy_flag(dig_port, mask);
-
-	return mask;
-}
-
-static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_port_live_status_mask(dig_port);
-
-	return icl_tc_port_live_status_mask(dig_port);
-}
-
 /*
  * Return the PHY status complete flag indicating that display can acquire the
  * PHY ownership. The IOM firmware sets this flag when a DP-alt or legacy sink
@@ -349,40 +319,6 @@ static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_port)
 	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
 }
 
-/*
- * Return the PHY status complete flag indicating that display can acquire the
- * PHY ownership. The IOM firmware sets this flag when it's ready to switch
- * the ownership to display, regardless of what sink is connected (TBT-alt,
- * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
- * subsystem and so switching the ownership to display is not required.
- */
-static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
-	u32 val;
-
-	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
-	if (val == 0xffffffff) {
-		drm_dbg_kms(&i915->drm,
-			    "Port %s: PHY in TCCOLD, assuming not complete\n",
-			    dig_port->tc_port_name);
-		return false;
-	}
-
-	return val & TCSS_DDI_STATUS_READY;
-}
-
-static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_status_complete(dig_port);
-
-	return icl_tc_phy_status_complete(dig_port);
-}
-
 static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 				      bool take)
 {
@@ -407,28 +343,6 @@ static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	return true;
 }
 
-static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
-				      bool take)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum port port = dig_port->base.port;
-
-	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
-		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
-
-	return true;
-}
-
-static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_take_ownership(dig_port, take);
-
-	return icl_tc_phy_take_ownership(dig_port, take);
-}
-
 static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -445,26 +359,6 @@ static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
 }
 
-static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum port port = dig_port->base.port;
-	u32 val;
-
-	val = intel_de_read(i915, DDI_BUF_CTL(port));
-	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-}
-
-static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
-{
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-
-	if (IS_ALDERLAKE_P(i915))
-		return adl_tc_phy_is_owned(dig_port);
-
-	return icl_tc_phy_is_owned(dig_port);
-}
-
 /*
  * This function implements the first part of the Connect Flow described by our
  * specification, Gen11 TypeC Programming chapter. The rest of the flow (reading
@@ -559,6 +453,128 @@ static void icl_tc_phy_disconnect(struct intel_digital_port *dig_port)
 	}
 }
 
+/**
+ * ADLP TC PHY handlers
+ * --------------------
+ */
+static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	u32 val, mask = 0;
+
+	/*
+	 * On ADL-P HW/FW will wake from TCCOLD to complete the read access of
+	 * registers in IOM. Note that this doesn't apply to PHY and FIA
+	 * registers.
+	 */
+	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
+	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
+		mask |= BIT(TC_PORT_DP_ALT);
+	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
+		mask |= BIT(TC_PORT_TBT_ALT);
+
+	if (intel_de_read(i915, SDEISR) & isr_bit)
+		mask |= BIT(TC_PORT_LEGACY);
+
+	/* The sink can be connected only in a single mode. */
+	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
+		tc_port_fixup_legacy_flag(dig_port, mask);
+
+	return mask;
+}
+
+/*
+ * Return the PHY status complete flag indicating that display can acquire the
+ * PHY ownership. The IOM firmware sets this flag when it's ready to switch
+ * the ownership to display, regardless of what sink is connected (TBT-alt,
+ * DP-alt, legacy or nothing). For TBT-alt sinks the PHY is owned by the TBT
+ * subsystem and so switching the ownership to display is not required.
+ */
+static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
+	u32 val;
+
+	val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
+	if (val == 0xffffffff) {
+		drm_dbg_kms(&i915->drm,
+			    "Port %s: PHY in TCCOLD, assuming not complete\n",
+			    dig_port->tc_port_name);
+		return false;
+	}
+
+	return val & TCSS_DDI_STATUS_READY;
+}
+
+static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
+				      bool take)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum port port = dig_port->base.port;
+
+	intel_de_rmw(i915, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
+		     take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
+
+	return true;
+}
+
+static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum port port = dig_port->base.port;
+	u32 val;
+
+	val = intel_de_read(i915, DDI_BUF_CTL(port));
+	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+}
+
+/**
+ * Generic TC PHY handlers
+ * -----------------------
+ */
+static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (IS_ALDERLAKE_P(i915))
+		return adl_tc_port_live_status_mask(dig_port);
+
+	return icl_tc_port_live_status_mask(dig_port);
+}
+
+static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (IS_ALDERLAKE_P(i915))
+		return adl_tc_phy_status_complete(dig_port);
+
+	return icl_tc_phy_status_complete(dig_port);
+}
+
+static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (IS_ALDERLAKE_P(i915))
+		return adl_tc_phy_is_owned(dig_port);
+
+	return icl_tc_phy_is_owned(dig_port);
+}
+
+static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, bool take)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (IS_ALDERLAKE_P(i915))
+		return adl_tc_phy_take_ownership(dig_port, take);
+
+	return icl_tc_phy_take_ownership(dig_port, take);
+}
+
 static bool tc_phy_is_ready_and_owned(struct intel_digital_port *dig_port,
 				      bool phy_is_ready, bool phy_is_owned)
 {
-- 
2.37.1

