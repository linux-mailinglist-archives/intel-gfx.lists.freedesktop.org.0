Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE1C819011
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 19:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68AE310E1C5;
	Tue, 19 Dec 2023 18:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFC810E1BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 18:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703012267; x=1734548267;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EYsu1p5oNLN1GOTK9CGUodLX26Kqj7rxgAI9wumQkDw=;
 b=f+8KoleuhZG4g4yDR1jtY4XY3jlxvCJvWmgFYn0PIUkJ9e3z9qUnCy2O
 UPqaVlfJoFiVo0cFaXDVmEd+odP9u9fHOnosUrTg30ZLh9Qi0zsXUUV/l
 I/l+N930PpKyBu96udADxAjsZQoecrZCN1lx0gPKi0O3+079z1OmlJgjo
 9j/rC4ysqXbxsKmeEMiPXrZv7n2s0mTAioweFNyD25f0FWtWtXs36DaSf
 V/L4G3KMItsqV8J7QudV1VK0sAifmmaAu+7JENyel0FZlzmpmLRcPY8xx
 YK4Y0K1JGf5jUmkMx3gkfxCDxKIy4zDjWkuDu7ol+s0c+SdjUNqHjZ/i+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="386128039"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="386128039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 10:57:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="810333455"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="810333455"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 10:57:46 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/mtl: Add fake PCH for Meteor Lake
Date: Wed, 20 Dec 2023 00:22:33 +0530
Message-Id: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Correct the implementation trying to detect MTL PCH with
the MTL fake PCH id.

On MTL, both the North Display (NDE) and South Display (SDE) functionality
reside on the same die (the SoC die in this case), unlike many past
platforms where the SDE was on a separate PCH die. The code is (badly)
structured today in a way that assumes the SDE is always on the PCH for
modern platforms, so on platforms where we don't actually need to identify
the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
us to avoid restructuring a bunch of the code.we've been assigning a
"fake PCH" as a quick hack that allows us to avoid restructuring a bunch
of the code.

Removed unused macros of LNL amd MTL as well.

v2: Reorder PCH_MTL conditional check (Matt Roper)
    Reverting to PCH_MTL for PICA interrupt(Matt Roper)

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_bios.c        |  3 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
 drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c       |  5 +----
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  6 ++----
 drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
 drivers/gpu/drm/i915/soc/intel_pch.c             | 16 ++++++++--------
 drivers/gpu/drm/i915/soc/intel_pch.h             |  6 +-----
 9 files changed, 19 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 612d4cd9dacb..696ae59874a9 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
 
 	if (controller == 1 &&
 	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
-	    INTEL_PCH_TYPE(i915) < PCH_MTP)
+	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
 		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aa169b0055e9..0e61e424802e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2204,8 +2204,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	if (IS_DGFX(i915))
 		return vbt_pin;
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
-	    IS_ALDERLAKE_P(i915)) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
 		ddc_pin_map = adlp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
 	} else if (IS_ALDERLAKE_S(i915)) {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c985ebb6831a..b251a71092dd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3467,15 +3467,15 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 {
 	u32 freq;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
-		freq = dg1_rawclk(dev_priv);
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
 		/*
 		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
 		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
 		 * not need to be programmed."
 		 */
 		freq = 38400;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		freq = dg1_rawclk(dev_priv);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		freq = cnp_rawclk(dev_priv);
 	else if (HAS_PCH_SPLIT(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a7d8f3fc98de..6964f4b95865 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 	 * their flags both in the PICA and SDE IIR.
 	 */
 	if (*pch_iir & SDE_PICAINTERRUPT) {
-		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
+		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
 
 		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
 		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 40d7b6f3f489..854566ba5414 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -155,7 +155,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	const struct gmbus_pin *pins;
 	size_t size;
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTL) {
 		pins = gmbus_pins_mtp;
 		size = ARRAY_SIZE(gmbus_pins_mtp);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
@@ -164,9 +164,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
 		pins = gmbus_pins_dg1;
 		size = ARRAY_SIZE(gmbus_pins_dg1);
-	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
-		pins = gmbus_pins_mtp;
-		size = ARRAY_SIZE(gmbus_pins_mtp);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
 		pins = gmbus_pins_icp;
 		size = ARRAY_SIZE(gmbus_pins_icp);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 04f62f27ad74..76076509f771 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -163,12 +163,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
 		return;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
 		hpd->pch_hpd = hpd_mtp;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		hpd->pch_hpd = hpd_sde_dg1;
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
-		hpd->pch_hpd = hpd_mtp;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		hpd->pch_hpd = hpd_icp;
 	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
@@ -1139,7 +1137,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 
 	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
 		xe2lpd_sde_hpd_irq_setup(i915);
-	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
+	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
 		mtp_hpd_irq_setup(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index a8fa3a20990e..2d65a538f83e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
 
 	if (intel_dp->pps.pps_idx == 1 &&
 	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
-	    INTEL_PCH_TYPE(i915) < PCH_MTP)
+	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
 		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 240beafb38ed..3cad6dac06b0 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
 			    !IS_ALDERLAKE_P(dev_priv));
 		return PCH_ADP;
-	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
-	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
-		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
-		return PCH_MTP;
 	default:
 		return PCH_NONE;
 	}
@@ -173,9 +168,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
 
-	if (IS_METEORLAKE(dev_priv))
-		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
-	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
 	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
@@ -225,6 +218,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->pch_type = PCH_LNL;
 		return;
+	} else if (IS_METEORLAKE(dev_priv)) {
+		/*
+		 * Both north display and south display are on the SoC die.
+		 * The real PCH is uninvolved in display.
+		 */
+		dev_priv->pch_type = PCH_MTL;
+		return;
 	} else if (IS_DG2(dev_priv)) {
 		dev_priv->pch_type = PCH_DG2;
 		return;
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
index 1b03ea60a7a8..89e89ede265d 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/soc/intel_pch.h
@@ -25,11 +25,11 @@ enum intel_pch {
 	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
 	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
 	PCH_ADP,	/* Alder Lake PCH */
-	PCH_MTP,	/* Meteor Lake PCH */
 
 	/* Fake PCHs, functionality handled on the same PCI dev */
 	PCH_DG1 = 1024,
 	PCH_DG2,
+	PCH_MTL,
 	PCH_LNL,
 };
 
@@ -59,16 +59,12 @@ enum intel_pch {
 #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
 #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
 #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
-#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
-#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
 #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
 
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
 #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
-#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
-#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
 #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-- 
2.25.1

