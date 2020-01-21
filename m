Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8782F1448AC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 01:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6C36E46B;
	Wed, 22 Jan 2020 00:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223596E46B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 00:03:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 16:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="307367137"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2020 16:03:24 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jan 2020 16:03:24 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jan 2020 16:03:24 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 21 Jan 2020 15:58:48 -0800
Message-ID: <20200121235848.8457-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Ensure that the DDI selection MUX
 is programmed correctly
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

Perhaps in some cases the BIOS/GOP or other firmware may turn on
PHY A but may not program the MUX correctly. Therefore, re-program
PHY A if it is determined after reading the VBT that the value
programmed for the MUX bit does not match the expected value.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 .../gpu/drm/i915/display/intel_combo_phy.c    | 74 +++++++++++--------
 1 file changed, 45 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 5f54aca7c36f..ec63c2657923 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -191,20 +191,57 @@ static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
 			(I915_READ(ICL_PORT_COMP_DW0(phy)) & COMP_INIT);
 }
 
+static bool ehl_vbt_ddi_d_present(struct drm_i915_private *i915)
+{
+	bool ddi_a_present = intel_bios_is_port_present(i915, PORT_A);
+	bool ddi_d_present = intel_bios_is_port_present(i915, PORT_D);
+	bool dsi_present = intel_bios_is_dsi_present(i915, NULL);
+
+	/*
+	 * VBT's 'dvo port' field for child devices references the DDI, not
+	 * the PHY.  So if combo PHY A is wired up to drive an external
+	 * display, we should see a child device present on PORT_D and
+	 * nothing on PORT_A and no DSI.
+	 */
+	if (ddi_d_present && !ddi_a_present && !dsi_present)
+		return true;
+
+	/*
+	 * If we encounter a VBT that claims to have an external display on
+	 * DDI-D _and_ an internal display on DDI-A/DSI leave an error message
+	 * in the log and let the internal display win.
+	 */
+	if (ddi_d_present)
+		DRM_ERROR("VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");
+
+	return false;
+}
+
 static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
 				       enum phy phy)
 {
 	bool ret;
+	u32 expected_val = 0;
 
 	if (!icl_combo_phy_enabled(dev_priv, phy))
 		return false;
 
 	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
 
-	if (phy == PHY_A)
+	if (phy == PHY_A) {
 		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
 				     IREFGEN, IREFGEN);
 
+		if (IS_ELKHARTLAKE(dev_priv)) {
+			if (ehl_vbt_ddi_d_present(dev_priv))
+				expected_val = ICL_PHY_MISC_MUX_DDID;
+
+			ret &= check_phy_reg(dev_priv, phy, ICL_PHY_MISC(phy),
+					     ICL_PHY_MISC_MUX_DDID,
+					     expected_val);
+		}
+	}
+
 	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_CL_DW5(phy),
 			     CL_POWER_DOWN_ENABLE, CL_POWER_DOWN_ENABLE);
 
@@ -263,32 +300,6 @@ void intel_combo_phy_power_up_lanes(struct drm_i915_private *dev_priv,
 	I915_WRITE(ICL_PORT_CL_DW10(phy), val);
 }
 
-static u32 ehl_combo_phy_a_mux(struct drm_i915_private *i915, u32 val)
-{
-	bool ddi_a_present = intel_bios_is_port_present(i915, PORT_A);
-	bool ddi_d_present = intel_bios_is_port_present(i915, PORT_D);
-	bool dsi_present = intel_bios_is_dsi_present(i915, NULL);
-
-	/*
-	 * VBT's 'dvo port' field for child devices references the DDI, not
-	 * the PHY.  So if combo PHY A is wired up to drive an external
-	 * display, we should see a child device present on PORT_D and
-	 * nothing on PORT_A and no DSI.
-	 */
-	if (ddi_d_present && !ddi_a_present && !dsi_present)
-		return val | ICL_PHY_MISC_MUX_DDID;
-
-	/*
-	 * If we encounter a VBT that claims to have an external display on
-	 * DDI-D _and_ an internal display on DDI-A/DSI leave an error message
-	 * in the log and let the internal display win.
-	 */
-	if (ddi_d_present)
-		DRM_ERROR("VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");
-
-	return val & ~ICL_PHY_MISC_MUX_DDID;
-}
-
 static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 {
 	enum phy phy;
@@ -319,8 +330,13 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
 		 * "internal" child devices.
 		 */
 		val = I915_READ(ICL_PHY_MISC(phy));
-		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_A)
-			val = ehl_combo_phy_a_mux(dev_priv, val);
+		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_A) {
+			val &= ~ICL_PHY_MISC_MUX_DDID;
+
+			if (ehl_vbt_ddi_d_present(dev_priv))
+				val |= ICL_PHY_MISC_MUX_DDID;
+		}
+
 		val &= ~ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN;
 		I915_WRITE(ICL_PHY_MISC(phy), val);
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
