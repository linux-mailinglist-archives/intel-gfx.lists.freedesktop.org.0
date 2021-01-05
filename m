Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5DC2EAA26
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 12:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665446E0E6;
	Tue,  5 Jan 2021 11:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27BE6E0E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 11:48:46 +0000 (UTC)
IronPort-SDR: Cz21BbPct9ZqI7Hdslzle0ySMpxyOOV2nWAkdFzSbBOx68WXToVEr6BXgRRNcqYi0zfkYk2HHd
 FtYU0FaeTZzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="241175937"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="241175937"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 03:48:46 -0800
IronPort-SDR: r2aYGSOPDU5ncEXhxK6Us6C6rbiMDxWZNy9w7ne412XyNgsF6fGzm5fCeTUT8sdEK78QG+8B5i
 sZHdDZZgfShw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="395242531"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jan 2021 03:48:43 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org,
	hariom.pandey@intel.com
Date: Tue,  5 Jan 2021 17:09:17 +0530
Message-Id: <20210105113917.54746-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V3] drm/i915/gen9_bc : Add TGP PCH support
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

We have TGP PCH support for Tigerlake and Rocketlake. Similarly
now TGP PCH can be used with Cometlake CPU.

Changes since V2 :
        - IS_COMETLAKE replaced with IS_GEN9_BC
        - VBT ddc pin remapping added
        - Added dedicated HPD pin and DDC pin handling API
Changes since V1 :
        - Matched HPD Pin mapping for PORT C and PORT D of CML CPU.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++--
 drivers/gpu/drm/i915/display/intel_display.c |  7 ++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pch.c             |  3 ++-
 5 files changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 06c3310446a2..67f9c0d8d1f3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1623,6 +1623,12 @@ static const u8 icp_ddc_pin_map[] = {
 	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,
 };
 
+static const u8 gen9bc_tgp_ddc_pin_map[] = {
+	[DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
+	[DDC_BUS_DDI_C] = GMBUS_PIN_9_TC1_ICP,
+	[DDC_BUS_DDI_D] = GMBUS_PIN_10_TC2_ICP,
+};
+
 static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 {
 	const u8 *ddc_pin_map;
@@ -1630,6 +1636,9 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
 		return vbt_pin;
+	} else if (HAS_PCH_TGP(dev_priv) && IS_GEN9_BC(dev_priv)) {
+		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
+		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
 		ddc_pin_map = icp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 17eaa56c5a99..55d6329dc9c9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5301,7 +5301,9 @@ static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
 static enum hpd_pin tgl_hpd_pin(struct drm_i915_private *dev_priv,
 				enum port port)
 {
-	if (port >= PORT_TC1)
+	if (IS_GEN9_BC(dev_priv) && port >= PORT_C)
+		return HPD_PORT_TC1 + port - PORT_C;
+	else if (port >= PORT_TC1)
 		return HPD_PORT_TC1 + port - PORT_TC1;
 	else
 		return HPD_PORT_A + port - PORT_A;
@@ -5457,7 +5459,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->hpd_pin = dg1_hpd_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		encoder->hpd_pin = rkl_hpd_pin(dev_priv, port);
-	else if (INTEL_GEN(dev_priv) >= 12)
+	else if (INTEL_GEN(dev_priv) >= 12 || (IS_GEN9_BC(dev_priv) &&
+					       HAS_PCH_TGP(dev_priv)))
 		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
 	else if (IS_JSL_EHL(dev_priv))
 		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f2c48e5cdb43..5a75ce1f78ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16194,11 +16194,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 * register */
 		found = intel_de_read(dev_priv, SFUSE_STRAP);
 
-		if (found & SFUSE_STRAP_DDIB_DETECTED)
+		/* W/A due to lack of STRAP config on TGP PCH*/
+		if (found & SFUSE_STRAP_DDIB_DETECTED || HAS_PCH_TGP(dev_priv))
 			intel_ddi_init(dev_priv, PORT_B);
-		if (found & SFUSE_STRAP_DDIC_DETECTED)
+		if (found & SFUSE_STRAP_DDIC_DETECTED || HAS_PCH_TGP(dev_priv))
 			intel_ddi_init(dev_priv, PORT_C);
-		if (found & SFUSE_STRAP_DDID_DETECTED)
+		if (found & SFUSE_STRAP_DDID_DETECTED || HAS_PCH_TGP(dev_priv))
 			intel_ddi_init(dev_priv, PORT_D);
 		if (found & SFUSE_STRAP_DDIF_DETECTED)
 			intel_ddi_init(dev_priv, PORT_F);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index c5959590562b..536b7b0d68f9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3130,6 +3130,24 @@ static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return GMBUS_PIN_1_BXT + phy;
 }
 
+static u8 gen9bc_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+{
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+
+	WARN_ON(port == PORT_A);
+
+	/*
+	 * Pin mapping for GEN9 BC depends on which PCH is present.  With TGP,
+	 * final two outputs use type-c pins, even though they're actually
+	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
+	 * all outputs.
+	 */
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && phy >= PHY_C)
+		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
+
+	return GMBUS_PIN_1_BXT + phy;
+}
+
 static u8 dg1_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 {
 	return intel_port_to_phy(dev_priv, port) + 1;
@@ -3176,6 +3194,8 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
 	else if (IS_ROCKETLAKE(dev_priv))
 		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
+	else if (IS_GEN9_BC(dev_priv) && HAS_PCH_TGP(dev_priv))
+		ddc_pin = gen9bc_port_to_ddc_pin(dev_priv, port);
 	else if (HAS_PCH_MCC(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index f31c0dabd0cc..c1bc2d032360 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -121,7 +121,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
-			    !IS_ROCKETLAKE(dev_priv));
+			    !IS_ROCKETLAKE(dev_priv) &&
+			    !IS_GEN9_BC(dev_priv));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 	case INTEL_PCH_JSP2_DEVICE_ID_TYPE:
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
