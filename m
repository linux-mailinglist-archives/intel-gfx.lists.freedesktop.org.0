Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 064B53D9805
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864C86EA8B;
	Wed, 28 Jul 2021 22:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108536EA16
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212786392"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212786392"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663218"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:25 -0700
Message-Id: <20210728215946.1573015-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/25] drm/i915/display: remove explicit CNL
 handling from intel_combo_phy.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only real platform with DISPLAY_VER == 10 is GLK, that doesn't have
combo phys. We don't need to handle CNL explicitly in
intel_combo_phy.c.

Remove code and rename functions/macros accordingly to use ICL prefix.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 106 ++++--------------
 1 file changed, 20 insertions(+), 86 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 487c54cd5982..bacdf8a16bcb 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -23,9 +23,9 @@ enum {
 	PROCMON_1_05V_DOT_1,
 };
 
-static const struct cnl_procmon {
+static const struct icl_procmon {
 	u32 dw1, dw9, dw10;
-} cnl_procmon_values[] = {
+} icl_procmon_values[] = {
 	[PROCMON_0_85V_DOT_0] =
 		{ .dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96, },
 	[PROCMON_0_95V_DOT_0] =
@@ -38,15 +38,10 @@ static const struct cnl_procmon {
 		{ .dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1, },
 };
 
-/*
- * CNL has just one set of registers, while gen11 has a set for each combo PHY.
- * The CNL registers are equivalent to the gen11 PHY A registers, that's why we
- * call the ICL macros even though the function has CNL on its name.
- */
-static const struct cnl_procmon *
-cnl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
+static const struct icl_procmon *
+icl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	const struct cnl_procmon *procmon;
+	const struct icl_procmon *procmon;
 	u32 val;
 
 	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW3(phy));
@@ -55,32 +50,32 @@ cnl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 		MISSING_CASE(val);
 		fallthrough;
 	case VOLTAGE_INFO_0_85V | PROCESS_INFO_DOT_0:
-		procmon = &cnl_procmon_values[PROCMON_0_85V_DOT_0];
+		procmon = &icl_procmon_values[PROCMON_0_85V_DOT_0];
 		break;
 	case VOLTAGE_INFO_0_95V | PROCESS_INFO_DOT_0:
-		procmon = &cnl_procmon_values[PROCMON_0_95V_DOT_0];
+		procmon = &icl_procmon_values[PROCMON_0_95V_DOT_0];
 		break;
 	case VOLTAGE_INFO_0_95V | PROCESS_INFO_DOT_1:
-		procmon = &cnl_procmon_values[PROCMON_0_95V_DOT_1];
+		procmon = &icl_procmon_values[PROCMON_0_95V_DOT_1];
 		break;
 	case VOLTAGE_INFO_1_05V | PROCESS_INFO_DOT_0:
-		procmon = &cnl_procmon_values[PROCMON_1_05V_DOT_0];
+		procmon = &icl_procmon_values[PROCMON_1_05V_DOT_0];
 		break;
 	case VOLTAGE_INFO_1_05V | PROCESS_INFO_DOT_1:
-		procmon = &cnl_procmon_values[PROCMON_1_05V_DOT_1];
+		procmon = &icl_procmon_values[PROCMON_1_05V_DOT_1];
 		break;
 	}
 
 	return procmon;
 }
 
-static void cnl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
+static void icl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
-	const struct cnl_procmon *procmon;
+	const struct icl_procmon *procmon;
 	u32 val;
 
-	procmon = cnl_get_procmon_ref_values(dev_priv, phy);
+	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
 	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW1(phy));
 	val &= ~((0xff << 16) | 0xff);
@@ -109,13 +104,13 @@ static bool check_phy_reg(struct drm_i915_private *dev_priv,
 	return true;
 }
 
-static bool cnl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
+static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 					  enum phy phy)
 {
-	const struct cnl_procmon *procmon;
+	const struct icl_procmon *procmon;
 	bool ret;
 
-	procmon = cnl_get_procmon_ref_values(dev_priv, phy);
+	procmon = icl_get_procmon_ref_values(dev_priv, phy);
 
 	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
 			    (0xff << 16) | 0xff, procmon->dw1);
@@ -127,61 +122,6 @@ static bool cnl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 	return ret;
 }
 
-static bool cnl_combo_phy_enabled(struct drm_i915_private *dev_priv)
-{
-	return !(intel_de_read(dev_priv, CHICKEN_MISC_2) & CNL_COMP_PWR_DOWN) &&
-		(intel_de_read(dev_priv, CNL_PORT_COMP_DW0) & COMP_INIT);
-}
-
-static bool cnl_combo_phy_verify_state(struct drm_i915_private *dev_priv)
-{
-	enum phy phy = PHY_A;
-	bool ret;
-
-	if (!cnl_combo_phy_enabled(dev_priv))
-		return false;
-
-	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
-
-	ret &= check_phy_reg(dev_priv, phy, CNL_PORT_CL1CM_DW5,
-			     CL_POWER_DOWN_ENABLE, CL_POWER_DOWN_ENABLE);
-
-	return ret;
-}
-
-static void cnl_combo_phys_init(struct drm_i915_private *dev_priv)
-{
-	u32 val;
-
-	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
-	val &= ~CNL_COMP_PWR_DOWN;
-	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
-
-	/* Dummy PORT_A to get the correct CNL register from the ICL macro */
-	cnl_set_procmon_ref_values(dev_priv, PHY_A);
-
-	val = intel_de_read(dev_priv, CNL_PORT_COMP_DW0);
-	val |= COMP_INIT;
-	intel_de_write(dev_priv, CNL_PORT_COMP_DW0, val);
-
-	val = intel_de_read(dev_priv, CNL_PORT_CL1CM_DW5);
-	val |= CL_POWER_DOWN_ENABLE;
-	intel_de_write(dev_priv, CNL_PORT_CL1CM_DW5, val);
-}
-
-static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
-{
-	u32 val;
-
-	if (!cnl_combo_phy_verify_state(dev_priv))
-		drm_warn(&dev_priv->drm,
-			 "Combo PHY HW state changed unexpectedly.\n");
-
-	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
-	val |= CNL_COMP_PWR_DOWN;
-	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
-}
-
 static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy)
 {
 	/*
@@ -291,7 +231,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				     DCC_MODE_SELECT_CONTINUOSLY);
 	}
 
-	ret &= cnl_verify_procmon_ref_values(dev_priv, phy);
+	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
 
 	if (phy_is_master(dev_priv, phy)) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
@@ -415,7 +355,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
 		}
 
-		cnl_set_procmon_ref_values(dev_priv, phy);
+		icl_set_procmon_ref_values(dev_priv, phy);
 
 		if (phy_is_master(dev_priv, phy)) {
 			val = intel_de_read(dev_priv, ICL_PORT_COMP_DW8(phy));
@@ -474,16 +414,10 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 
 void intel_combo_phy_init(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(i915) >= 11)
-		icl_combo_phys_init(i915);
-	else if (IS_CANNONLAKE(i915))
-		cnl_combo_phys_init(i915);
+	icl_combo_phys_init(i915);
 }
 
 void intel_combo_phy_uninit(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(i915) >= 11)
-		icl_combo_phys_uninit(i915);
-	else if (IS_CANNONLAKE(i915))
-		cnl_combo_phys_uninit(i915);
+	icl_combo_phys_uninit(i915);
 }
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
