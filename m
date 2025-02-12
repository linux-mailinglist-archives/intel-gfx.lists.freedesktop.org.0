Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE4A32BE9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B18410E923;
	Wed, 12 Feb 2025 16:37:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VBTKIqOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B7E10E922;
 Wed, 12 Feb 2025 16:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378271; x=1770914271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=azeYBMvnpKEfyVxTEnfw2Y3Wn9lzeE9bfMOsdFH1VE8=;
 b=VBTKIqOB5YxNNt61nR38wo964fQTK/5vG/t12DOuBHvZ/EY10nBBxplX
 Q0KQYSXhvFnMBVZAbwjnjO303X6DeGcjPCj7qO9ts0cmHTv2wG00xNOAO
 SKpQIiCRepFAD1zIWRmSop76Cgjs1jqMJyNJ3Pq9oul1ppyDhKzGBI6EQ
 QtkPTuJBNXCAzDF/raZRlBW0Hlo3O1El+nH8HL3KPTgdYUx3INJBcqXD3
 yAf1qqZk7/A+5mYLVsMCnBpRdRsfamB3imCIxM8VIRj71SxrDf1ml3HVW
 Pi10mgk8aZwjDNI+pbnttNrb/eGOZB9W8WFyrb1Nu99f2/a822/sv9Um1 Q==;
X-CSE-ConnectionGUID: GeU5G9tNTM2s8fOrv0p7Eg==
X-CSE-MsgGUID: Xwfe2Q0XS1evzS1Od1Us6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51479979"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51479979"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:51 -0800
X-CSE-ConnectionGUID: 3/4Um+STTFGBnNx5bgdGfg==
X-CSE-MsgGUID: wL2w+T+mSTGg2bhZOn/cHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080782"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/14] drm/i915/combo-phy: convert intel_combo_phy.[ch] to
 struct intel_display
Date: Wed, 12 Feb 2025 18:36:41 +0200
Message-Id: <c2e0a6294a8eaa4c16632881edc4f2d23c576101.1739378096.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_combo_phy.[ch] to struct
intel_display, along with intel_phy_is_combo() in intel_display.c.

Drive-by convert some drm_dbg() to drm_dbg_kms() while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   6 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    | 180 +++++++++---------
 .../gpu/drm/i915/display/intel_combo_phy.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../i915/display/intel_display_power_well.c   |   3 +-
 8 files changed, 109 insertions(+), 113 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index e84a362b54c9..9600c2a346d4 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -31,8 +31,8 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "icl_dsi.h"
 #include "icl_dsi_regs.h"
 #include "intel_atomic.h"
@@ -413,12 +413,12 @@ static void gen11_dsi_enable_io_power(struct intel_encoder *encoder)
 
 static void gen11_dsi_power_up_lanes(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum phy phy;
 
 	for_each_dsi_phy(phy, intel_dsi->phys)
-		intel_combo_phy_power_up_lanes(dev_priv, phy, true,
+		intel_combo_phy_power_up_lanes(display, phy, true,
 					       intel_dsi->lane_count, false);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 4fbe2e3542ca..17eea244cc83 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -3,20 +3,20 @@
  * Copyright © 2018 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 
-#define for_each_combo_phy(__dev_priv, __phy) \
+#define for_each_combo_phy(__display, __phy) \
 	for ((__phy) = PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)	\
-		for_each_if(intel_phy_is_combo(__dev_priv, __phy))
+		for_each_if(intel_phy_is_combo(__display, __phy))
 
-#define for_each_combo_phy_reverse(__dev_priv, __phy) \
+#define for_each_combo_phy_reverse(__display, __phy) \
 	for ((__phy) = I915_MAX_PHYS; (__phy)-- > PHY_A;) \
-		for_each_if(intel_phy_is_combo(__dev_priv, __phy))
+		for_each_if(intel_phy_is_combo(__display, __phy))
 
 enum {
 	PROCMON_0_85V_DOT_0,
@@ -53,11 +53,11 @@ static const struct icl_procmon {
 };
 
 static const struct icl_procmon *
-icl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
+icl_get_procmon_ref_values(struct intel_display *display, enum phy phy)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW3(phy));
+	val = intel_de_read(display, ICL_PORT_COMP_DW3(phy));
 	switch (val & (PROCESS_INFO_MASK | VOLTAGE_INFO_MASK)) {
 	default:
 		MISSING_CASE(val);
@@ -75,57 +75,57 @@ icl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 	}
 }
 
-static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
+static void icl_set_procmon_ref_values(struct intel_display *display,
 				       enum phy phy)
 {
 	const struct icl_procmon *procmon;
 
-	procmon = icl_get_procmon_ref_values(dev_priv, phy);
+	procmon = icl_get_procmon_ref_values(display, phy);
 
-	intel_de_rmw(dev_priv, ICL_PORT_COMP_DW1(phy),
+	intel_de_rmw(display, ICL_PORT_COMP_DW1(phy),
 		     (0xff << 16) | 0xff, procmon->dw1);
 
-	intel_de_write(dev_priv, ICL_PORT_COMP_DW9(phy), procmon->dw9);
-	intel_de_write(dev_priv, ICL_PORT_COMP_DW10(phy), procmon->dw10);
+	intel_de_write(display, ICL_PORT_COMP_DW9(phy), procmon->dw9);
+	intel_de_write(display, ICL_PORT_COMP_DW10(phy), procmon->dw10);
 }
 
-static bool check_phy_reg(struct drm_i915_private *dev_priv,
+static bool check_phy_reg(struct intel_display *display,
 			  enum phy phy, i915_reg_t reg, u32 mask,
 			  u32 expected_val)
 {
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 
 	if ((val & mask) != expected_val) {
-		drm_dbg(&dev_priv->drm,
-			"Combo PHY %c reg %08x state mismatch: "
-			"current %08x mask %08x expected %08x\n",
-			phy_name(phy),
-			reg.reg, val, mask, expected_val);
+		drm_dbg_kms(display->drm,
+			    "Combo PHY %c reg %08x state mismatch: "
+			    "current %08x mask %08x expected %08x\n",
+			    phy_name(phy),
+			    reg.reg, val, mask, expected_val);
 		return false;
 	}
 
 	return true;
 }
 
-static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
+static bool icl_verify_procmon_ref_values(struct intel_display *display,
 					  enum phy phy)
 {
 	const struct icl_procmon *procmon;
 	bool ret;
 
-	procmon = icl_get_procmon_ref_values(dev_priv, phy);
+	procmon = icl_get_procmon_ref_values(display, phy);
 
-	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
+	ret = check_phy_reg(display, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
-	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
+	ret &= check_phy_reg(display, phy, ICL_PORT_COMP_DW9(phy),
 			     -1U, procmon->dw9);
-	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW10(phy),
+	ret &= check_phy_reg(display, phy, ICL_PORT_COMP_DW10(phy),
 			     -1U, procmon->dw10);
 
 	return ret;
 }
 
-static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
+static bool has_phy_misc(struct intel_display *display, enum phy phy)
 {
 	/*
 	 * Some platforms only expect PHY_MISC to be programmed for PHY-A and
@@ -136,32 +136,30 @@ static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
 	 * that we program it for PHY A.
 	 */
 
-	if (IS_ALDERLAKE_S(i915))
+	if (display->platform.alderlake_s)
 		return phy == PHY_A;
-	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) ||
-		 IS_ROCKETLAKE(i915) ||
-		 IS_DG1(i915))
+	else if ((display->platform.jasperlake || display->platform.elkhartlake) ||
+		 display->platform.rocketlake ||
+		 display->platform.dg1)
 		return phy < PHY_C;
 
 	return true;
 }
 
-static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
+static bool icl_combo_phy_enabled(struct intel_display *display,
 				  enum phy phy)
 {
 	/* The PHY C added by EHL has no PHY_MISC register */
-	if (!has_phy_misc(dev_priv, phy))
-		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
+	if (!has_phy_misc(display, phy))
+		return intel_de_read(display, ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
 	else
-		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) &
+		return !(intel_de_read(display, ICL_PHY_MISC(phy)) &
 			 ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN) &&
-			(intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
+			(intel_de_read(display, ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
 }
 
-static bool ehl_vbt_ddi_d_present(struct drm_i915_private *i915)
+static bool ehl_vbt_ddi_d_present(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	bool ddi_a_present = intel_bios_is_port_present(display, PORT_A);
 	bool ddi_d_present = intel_bios_is_port_present(display, PORT_D);
 	bool dsi_present = intel_bios_is_dsi_present(display, NULL);
@@ -181,13 +179,13 @@ static bool ehl_vbt_ddi_d_present(struct drm_i915_private *i915)
 	 * in the log and let the internal display win.
 	 */
 	if (ddi_d_present)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");
 
 	return false;
 }
 
-static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
+static bool phy_is_master(struct intel_display *display, enum phy phy)
 {
 	/*
 	 * Certain PHYs are connected to compensation resistors and act
@@ -207,64 +205,64 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
 	 */
 	if (phy == PHY_A)
 		return true;
-	else if (IS_ALDERLAKE_S(dev_priv))
+	else if (display->platform.alderlake_s)
 		return phy == PHY_D;
-	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.dg1 || display->platform.rocketlake)
 		return phy == PHY_C;
 
 	return false;
 }
 
-static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
+static bool icl_combo_phy_verify_state(struct intel_display *display,
 				       enum phy phy)
 {
 	bool ret = true;
 	u32 expected_val = 0;
 
-	if (!icl_combo_phy_enabled(dev_priv, phy))
+	if (!icl_combo_phy_enabled(display, phy))
 		return false;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN(0, phy),
+	if (DISPLAY_VER(display) >= 12) {
+		ret &= check_phy_reg(display, phy, ICL_PORT_TX_DW8_LN(0, phy),
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK,
 				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
 				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
 
-		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
+		ret &= check_phy_reg(display, phy, ICL_PORT_PCS_DW1_LN(0, phy),
 				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);
 	}
 
-	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
+	ret &= icl_verify_procmon_ref_values(display, phy);
 
-	if (phy_is_master(dev_priv, phy)) {
-		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
+	if (phy_is_master(display, phy)) {
+		ret &= check_phy_reg(display, phy, ICL_PORT_COMP_DW8(phy),
 				     IREFGEN, IREFGEN);
 
-		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
-			if (ehl_vbt_ddi_d_present(dev_priv))
+		if (display->platform.jasperlake || display->platform.elkhartlake) {
+			if (ehl_vbt_ddi_d_present(display))
 				expected_val = ICL_PHY_MISC_MUX_DDID;
 
-			ret &= check_phy_reg(dev_priv, phy, ICL_PHY_MISC(phy),
+			ret &= check_phy_reg(display, phy, ICL_PHY_MISC(phy),
 					     ICL_PHY_MISC_MUX_DDID,
 					     expected_val);
 		}
 	}
 
-	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_CL_DW5(phy),
+	ret &= check_phy_reg(display, phy, ICL_PORT_CL_DW5(phy),
 			     CL_POWER_DOWN_ENABLE, CL_POWER_DOWN_ENABLE);
 
 	return ret;
 }
 
-void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
+void intel_combo_phy_power_up_lanes(struct intel_display *display,
 				    enum phy phy, bool is_dsi,
 				    int lane_count, bool lane_reversal)
 {
 	u8 lane_mask;
 
 	if (is_dsi) {
-		drm_WARN_ON(&dev_priv->drm, lane_reversal);
+		drm_WARN_ON(display->drm, lane_reversal);
 
 		switch (lane_count) {
 		case 1:
@@ -302,28 +300,28 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	intel_de_rmw(dev_priv, ICL_PORT_CL_DW10(phy),
+	intel_de_rmw(display, ICL_PORT_CL_DW10(phy),
 		     PWR_DOWN_LN_MASK, lane_mask);
 }
 
-static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
+static void icl_combo_phys_init(struct intel_display *display)
 {
 	enum phy phy;
 
-	for_each_combo_phy(dev_priv, phy) {
+	for_each_combo_phy(display, phy) {
 		const struct icl_procmon *procmon;
 		u32 val;
 
-		if (icl_combo_phy_verify_state(dev_priv, phy))
+		if (icl_combo_phy_verify_state(display, phy))
 			continue;
 
-		procmon = icl_get_procmon_ref_values(dev_priv, phy);
+		procmon = icl_get_procmon_ref_values(display, phy);
 
-		drm_dbg(&dev_priv->drm,
-			"Initializing combo PHY %c (Voltage/Process Info : %s)\n",
-			phy_name(phy), procmon->name);
+		drm_dbg_kms(display->drm,
+			    "Initializing combo PHY %c (Voltage/Process Info : %s)\n",
+			    phy_name(phy), procmon->name);
 
-		if (!has_phy_misc(dev_priv, phy))
+		if (!has_phy_misc(display, phy))
 			goto skip_phy_misc;
 
 		/*
@@ -334,84 +332,84 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		 * based on whether our VBT indicates the presence of any
 		 * "internal" child devices.
 		 */
-		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
-		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+		val = intel_de_read(display, ICL_PHY_MISC(phy));
+		if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		    phy == PHY_A) {
 			val &= ~ICL_PHY_MISC_MUX_DDID;
 
-			if (ehl_vbt_ddi_d_present(dev_priv))
+			if (ehl_vbt_ddi_d_present(display))
 				val |= ICL_PHY_MISC_MUX_DDID;
 		}
 
 		val &= ~ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
-		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
+		intel_de_write(display, ICL_PHY_MISC(phy), val);
 
 skip_phy_misc:
-		if (DISPLAY_VER(dev_priv) >= 12) {
-			val = intel_de_read(dev_priv, ICL_PORT_TX_DW8_LN(0, phy));
+		if (DISPLAY_VER(display) >= 12) {
+			val = intel_de_read(display, ICL_PORT_TX_DW8_LN(0, phy));
 			val &= ~ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK;
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_SEL;
 			val |= ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2;
-			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
+			intel_de_write(display, ICL_PORT_TX_DW8_GRP(phy), val);
 
-			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
+			val = intel_de_read(display, ICL_PORT_PCS_DW1_LN(0, phy));
 			val &= ~DCC_MODE_SELECT_MASK;
 			val |= RUN_DCC_ONCE;
-			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
+			intel_de_write(display, ICL_PORT_PCS_DW1_GRP(phy), val);
 		}
 
-		icl_set_procmon_ref_values(dev_priv, phy);
+		icl_set_procmon_ref_values(display, phy);
 
-		if (phy_is_master(dev_priv, phy))
-			intel_de_rmw(dev_priv, ICL_PORT_COMP_DW8(phy),
+		if (phy_is_master(display, phy))
+			intel_de_rmw(display, ICL_PORT_COMP_DW8(phy),
 				     0, IREFGEN);
 
-		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), 0, COMP_INIT);
-		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
+		intel_de_rmw(display, ICL_PORT_COMP_DW0(phy), 0, COMP_INIT);
+		intel_de_rmw(display, ICL_PORT_CL_DW5(phy),
 			     0, CL_POWER_DOWN_ENABLE);
 	}
 }
 
-static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
+static void icl_combo_phys_uninit(struct intel_display *display)
 {
 	enum phy phy;
 
-	for_each_combo_phy_reverse(dev_priv, phy) {
+	for_each_combo_phy_reverse(display, phy) {
 		if (phy == PHY_A &&
-		    !icl_combo_phy_verify_state(dev_priv, phy)) {
-			if (IS_TIGERLAKE(dev_priv) || IS_DG1(dev_priv)) {
+		    !icl_combo_phy_verify_state(display, phy)) {
+			if (display->platform.tigerlake || display->platform.dg1) {
 				/*
 				 * A known problem with old ifwi:
 				 * https://gitlab.freedesktop.org/drm/intel/-/issues/2411
 				 * Suppress the warning for CI. Remove ASAP!
 				 */
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "Combo PHY %c HW state changed unexpectedly\n",
 					    phy_name(phy));
 			} else {
-				drm_warn(&dev_priv->drm,
+				drm_warn(display->drm,
 					 "Combo PHY %c HW state changed unexpectedly\n",
 					 phy_name(phy));
 			}
 		}
 
-		if (!has_phy_misc(dev_priv, phy))
+		if (!has_phy_misc(display, phy))
 			goto skip_phy_misc;
 
-		intel_de_rmw(dev_priv, ICL_PHY_MISC(phy), 0,
+		intel_de_rmw(display, ICL_PHY_MISC(phy), 0,
 			     ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN);
 
 skip_phy_misc:
-		intel_de_rmw(dev_priv, ICL_PORT_COMP_DW0(phy), COMP_INIT, 0);
+		intel_de_rmw(display, ICL_PORT_COMP_DW0(phy), COMP_INIT, 0);
 	}
 }
 
-void intel_combo_phy_init(struct drm_i915_private *i915)
+void intel_combo_phy_init(struct intel_display *display)
 {
-	icl_combo_phys_init(i915);
+	icl_combo_phys_init(display);
 }
 
-void intel_combo_phy_uninit(struct drm_i915_private *i915)
+void intel_combo_phy_uninit(struct intel_display *display)
 {
-	icl_combo_phys_uninit(i915);
+	icl_combo_phys_uninit(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.h b/drivers/gpu/drm/i915/display/intel_combo_phy.h
index 660886f86c59..3f5dba78e533 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.h
@@ -8,12 +8,12 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 enum phy;
+struct intel_display;
 
-void intel_combo_phy_init(struct drm_i915_private *dev_priv);
-void intel_combo_phy_uninit(struct drm_i915_private *dev_priv);
-void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
+void intel_combo_phy_init(struct intel_display *display);
+void intel_combo_phy_uninit(struct intel_display *display);
+void intel_combo_phy_power_up_lanes(struct intel_display *display,
 				    enum phy phy, bool is_dsi,
 				    int lane_count, bool lane_reversal);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 900e066b2478..5433279227e1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2437,13 +2437,13 @@ static void intel_ddi_disable_fec(struct intel_encoder *encoder,
 static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_encoder_is_combo(encoder)) {
 		enum phy phy = intel_encoder_to_phy(encoder);
 
-		intel_combo_phy_power_up_lanes(i915, phy, false,
+		intel_combo_phy_power_up_lanes(display, phy, false,
 					       crtc_state->lane_count,
 					       dig_port->lane_reversal);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0450fdf9d4de..23d4e4c6bd6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1995,17 +1995,17 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 }
 
 /* Prefer intel_encoder_is_combo() */
-bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
+bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
-	else if (IS_ALDERLAKE_S(dev_priv))
+	else if (display->platform.alderlake_s)
 		return phy <= PHY_E;
-	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.dg1 || display->platform.rocketlake)
 		return phy <= PHY_D;
-	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+	else if (display->platform.jasperlake || display->platform.elkhartlake)
 		return phy <= PHY_C;
-	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
+	else if (display->platform.alderlake_p || IS_DISPLAY_VER(display, 11, 12))
 		return phy <= PHY_B;
 	else
 		/*
@@ -2085,9 +2085,9 @@ enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
 
 bool intel_encoder_is_combo(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	return intel_phy_is_combo(i915, intel_encoder_to_phy(encoder));
+	return intel_phy_is_combo(display, intel_encoder_to_phy(encoder));
 }
 
 bool intel_encoder_is_snps(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f702425df305..d4a709588700 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -476,7 +476,7 @@ struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
 void intel_encoder_get_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *crtc_state);
-bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy);
+bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy);
 enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d93f43d145a9..396930937d98 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1651,7 +1651,7 @@ static void icl_display_core_init(struct intel_display *display,
 		return;
 
 	/* 2. Initialize all combo phys */
-	intel_combo_phy_init(dev_priv);
+	intel_combo_phy_init(display);
 
 	/*
 	 * 3. Enable Power Well 1 (PG1).
@@ -1714,7 +1714,6 @@ static void icl_display_core_init(struct intel_display *display,
 
 static void icl_display_core_uninit(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
@@ -1747,7 +1746,7 @@ static void icl_display_core_uninit(struct intel_display *display)
 	mutex_unlock(&power_domains->lock);
 
 	/* 5. */
-	intel_combo_phy_uninit(dev_priv);
+	intel_combo_phy_uninit(display);
 }
 
 static void chv_phy_control_init(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6fbb94c8bfb3..5b60db597329 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -973,7 +973,6 @@ static void gen9_assert_dbuf_enabled(struct intel_display *display)
 
 void gen9_disable_dc_states(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_cdclk_config cdclk_config = {};
 	u32 old_state = power_domains->dc_state;
@@ -1013,7 +1012,7 @@ void gen9_disable_dc_states(struct intel_display *display)
 		 * PHY's HW context for port B is lost after DC transitions,
 		 * so we need to restore it manually.
 		 */
-		intel_combo_phy_init(dev_priv);
+		intel_combo_phy_init(display);
 }
 
 static void gen9_dc_off_power_well_enable(struct intel_display *display,
-- 
2.39.5

