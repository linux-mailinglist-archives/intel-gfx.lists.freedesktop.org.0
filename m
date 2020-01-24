Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B084F1485F9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD2F72A6E;
	Fri, 24 Jan 2020 13:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D1372A6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:25:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="228316545"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:25:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:26 +0200
Message-Id: <3dd667bdc6fa38fb7bca3f44fbed601f5250f027.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 05/33] drm/i915/combo_phy: use intel_de_*()
 functions for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 66 +++++++++----------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 5f54aca7c36f..a45b934fab0a 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -48,7 +48,7 @@ cnl_get_procmon_ref_values(struct drm_i915_private *dev_priv, enum phy phy)
 	const struct cnl_procmon *procmon;
 	u32 val;
 
-	val = I915_READ(ICL_PORT_COMP_DW3(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW3(phy));
 	switch (val & (PROCESS_INFO_MASK | VOLTAGE_INFO_MASK)) {
 	default:
 		MISSING_CASE(val);
@@ -81,20 +81,20 @@ static void cnl_set_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 	procmon = cnl_get_procmon_ref_values(dev_priv, phy);
 
-	val = I915_READ(ICL_PORT_COMP_DW1(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_COMP_DW1(phy));
 	val &= ~((0xff << 16) | 0xff);
 	val |= procmon->dw1;
-	I915_WRITE(ICL_PORT_COMP_DW1(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_COMP_DW1(phy), val);
 
-	I915_WRITE(ICL_PORT_COMP_DW9(phy), procmon->dw9);
-	I915_WRITE(ICL_PORT_COMP_DW10(phy), procmon->dw10);
+	intel_de_write(dev_priv, ICL_PORT_COMP_DW9(phy), procmon->dw9);
+	intel_de_write(dev_priv, ICL_PORT_COMP_DW10(phy), procmon->dw10);
 }
 
 static bool check_phy_reg(struct drm_i915_private *dev_priv,
 			  enum phy phy, i915_reg_t reg, u32 mask,
 			  u32 expected_val)
 {
-	u32 val = I915_READ(reg);
+	u32 val = intel_de_read(dev_priv, reg);
 
 	if ((val & mask) != expected_val) {
 		DRM_DEBUG_DRIVER("Combo PHY %c reg %08x state mismatch: "
@@ -127,8 +127,8 @@ static bool cnl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
 
 static bool cnl_combo_phy_enabled(struct drm_i915_private *dev_priv)
 {
-	return !(I915_READ(CHICKEN_MISC_2) & CNL_COMP_PWR_DOWN) &&
-		(I915_READ(CNL_PORT_COMP_DW0) & COMP_INIT);
+	return !(intel_de_read(dev_priv, CHICKEN_MISC_2) & CNL_COMP_PWR_DOWN) &&
+		(intel_de_read(dev_priv, CNL_PORT_COMP_DW0) & COMP_INIT);
 }
 
 static bool cnl_combo_phy_verify_state(struct drm_i915_private *dev_priv)
@@ -151,20 +151,20 @@ static void cnl_combo_phys_init(struct drm_i915_private *dev_priv)
 {
 	u32 val;
 
-	val = I915_READ(CHICKEN_MISC_2);
+	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
 	val &= ~CNL_COMP_PWR_DOWN;
-	I915_WRITE(CHICKEN_MISC_2, val);
+	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
 
 	/* Dummy PORT_A to get the correct CNL register from the ICL macro */
 	cnl_set_procmon_ref_values(dev_priv, PHY_A);
 
-	val = I915_READ(CNL_PORT_COMP_DW0);
+	val = intel_de_read(dev_priv, CNL_PORT_COMP_DW0);
 	val |= COMP_INIT;
-	I915_WRITE(CNL_PORT_COMP_DW0, val);
+	intel_de_write(dev_priv, CNL_PORT_COMP_DW0, val);
 
-	val = I915_READ(CNL_PORT_CL1CM_DW5);
+	val = intel_de_read(dev_priv, CNL_PORT_CL1CM_DW5);
 	val |= CL_POWER_DOWN_ENABLE;
-	I915_WRITE(CNL_PORT_CL1CM_DW5, val);
+	intel_de_write(dev_priv, CNL_PORT_CL1CM_DW5, val);
 }
 
 static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
@@ -174,9 +174,9 @@ static void cnl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 	if (!cnl_combo_phy_verify_state(dev_priv))
 		DRM_WARN("Combo PHY HW state changed unexpectedly.\n");
 
-	val = I915_READ(CHICKEN_MISC_2);
+	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
 	val |= CNL_COMP_PWR_DOWN;
-	I915_WRITE(CHICKEN_MISC_2, val);
+	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
 }
 
 static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
@@ -184,11 +184,11 @@ static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
 {
 	/* The PHY C added by EHL has no PHY_MISC register */
 	if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
-		return I915_READ(ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
+		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy)) & COMP_INIT;
 	else
-		return !(I915_READ(ICL_PHY_MISC(phy)) &
+		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) &
 			 ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN) &&
-			(I915_READ(ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
+			(intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
 }
 
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
@@ -257,10 +257,10 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	val = I915_READ(ICL_PORT_CL_DW10(phy));
+	val = intel_de_read(dev_priv, ICL_PORT_CL_DW10(phy));
 	val &= ~PWR_DOWN_LN_MASK;
 	val |= lane_mask << PWR_DOWN_LN_SHIFT;
-	I915_WRITE(ICL_PORT_CL_DW10(phy), val);
+	intel_de_write(dev_priv, ICL_PORT_CL_DW10(phy), val);
 }
 
 static u32 ehl_combo_phy_a_mux(struct drm_i915_private *i915, u32 val)
@@ -318,28 +318,28 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		 * based on whether our VBT indicates the presence of any
 		 * "internal" child devices.
 		 */
-		val = I915_READ(ICL_PHY_MISC(phy));
+		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
 		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_A)
 			val = ehl_combo_phy_a_mux(dev_priv, val);
 		val &= ~ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
-		I915_WRITE(ICL_PHY_MISC(phy), val);
+		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
 
 skip_phy_misc:
 		cnl_set_procmon_ref_values(dev_priv, phy);
 
 		if (phy == PHY_A) {
-			val = I915_READ(ICL_PORT_COMP_DW8(phy));
+			val = intel_de_read(dev_priv, ICL_PORT_COMP_DW8(phy));
 			val |= IREFGEN;
-			I915_WRITE(ICL_PORT_COMP_DW8(phy), val);
+			intel_de_write(dev_priv, ICL_PORT_COMP_DW8(phy), val);
 		}
 
-		val = I915_READ(ICL_PORT_COMP_DW0(phy));
+		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
 		val |= COMP_INIT;
-		I915_WRITE(ICL_PORT_COMP_DW0(phy), val);
+		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
 
-		val = I915_READ(ICL_PORT_CL_DW5(phy));
+		val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
 		val |= CL_POWER_DOWN_ENABLE;
-		I915_WRITE(ICL_PORT_CL_DW5(phy), val);
+		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
 	}
 }
 
@@ -363,14 +363,14 @@ static void icl_combo_phys_uninit(struct drm_i915_private *dev_priv)
 		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
 			goto skip_phy_misc;
 
-		val = I915_READ(ICL_PHY_MISC(phy));
+		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
 		val |= ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
-		I915_WRITE(ICL_PHY_MISC(phy), val);
+		intel_de_write(dev_priv, ICL_PHY_MISC(phy), val);
 
 skip_phy_misc:
-		val = I915_READ(ICL_PORT_COMP_DW0(phy));
+		val = intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy));
 		val &= ~COMP_INIT;
-		I915_WRITE(ICL_PORT_COMP_DW0(phy), val);
+		intel_de_write(dev_priv, ICL_PORT_COMP_DW0(phy), val);
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
