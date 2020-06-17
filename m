Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B20C91FC4AC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 05:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2096E228;
	Wed, 17 Jun 2020 03:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D0F6E229
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 03:31:07 +0000 (UTC)
IronPort-SDR: vXLr1vr9sW292u37bydkku12DeYK9RCqIW/BBGiGV4280/XffUvCDTziJadMNon18Cm+4tTejs
 osFvtuOhFlKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 20:31:07 -0700
IronPort-SDR: +oJGtXgzn8kEicCHa/GX7pkNOcQ7q9i7CO8Im7ZKBVAVJO8w9WXkXNQO/7K+IzjNfGwKD7Vqjw
 jzr3aGtmwUtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,521,1583222400"; d="scan'208";a="262426495"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga007.jf.intel.com with ESMTP; 16 Jun 2020 20:31:06 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 20:30:56 -0700
Message-Id: <20200617033100.4044428-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200617033100.4044428-1-matthew.d.roper@intel.com>
References: <20200617033100.4044428-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/5] drm/i915/rkl: Handle new DPCLKA_CFGCR0
 layout
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

RKL uses a slightly different bit layout for the DPCLKA_CFGCR0 register.

v2:
 - Fix inverted mask application when updating ICL_DPCLKA_CFGCR0
 - Checkpatch style fixes

Bspec: 50287
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 18 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h              |  6 ++++++
 3 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7bb2294d2b..8790f221dc77 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2770,7 +2770,9 @@ hsw_set_signal_levels(struct intel_dp *intel_dp)
 static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i915_private *dev_priv,
 				     enum phy phy)
 {
-	if (intel_phy_is_combo(dev_priv, phy)) {
+	if (IS_ROCKETLAKE(dev_priv)) {
+		return RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
+	} else if (intel_phy_is_combo(dev_priv, phy)) {
 		return ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
 	} else if (intel_phy_is_tc(dev_priv, phy)) {
 		enum tc_port tc_port = intel_port_to_tc(dev_priv,
@@ -2797,6 +2799,16 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 		    (val & icl_dpclka_cfgcr0_clk_off(dev_priv, phy)) == 0);
 
 	if (intel_phy_is_combo(dev_priv, phy)) {
+		u32 mask, sel;
+
+		if (IS_ROCKETLAKE(dev_priv)) {
+			mask = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			sel = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
+		} else {
+			mask = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			sel = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
+		}
+
 		/*
 		 * Even though this register references DDIs, note that we
 		 * want to pass the PHY rather than the port (DDI).  For
@@ -2807,8 +2819,8 @@ static void icl_map_plls_to_ports(struct intel_encoder *encoder,
 		 *   Clock Select chooses the PLL for both DDIA and DDID and
 		 *   drives port A in all cases."
 		 */
-		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
-		val |= ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll->info->id, phy);
+		val &= ~mask;
+		val |= sel;
 		intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
 		intel_de_posting_read(dev_priv, ICL_DPCLKA_CFGCR0);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7457813ef273..6c2bb3354b86 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10785,9 +10785,18 @@ static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	u32 temp;
 
 	if (intel_phy_is_combo(dev_priv, phy)) {
-		temp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0) &
-			ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
-		id = temp >> ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
+		u32 mask, shift;
+
+		if (IS_ROCKETLAKE(dev_priv)) {
+			mask = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			shift = RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
+		} else {
+			mask = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy);
+			shift = ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy);
+		}
+
+		temp = intel_de_read(dev_priv, ICL_DPCLKA_CFGCR0) & mask;
+		id = temp >> shift;
 		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
 	} else if (intel_phy_is_tc(dev_priv, phy)) {
 		u32 clk_sel = intel_de_read(dev_priv, DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f09120cac89a..45bda5819abd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10195,12 +10195,18 @@ enum skl_power_gate {
 
 #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24))
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
 #define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < PORT_TC4 ? \
 						       (tc_port) + 12 : \
 						       (tc_port) - PORT_TC4 + 21))
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
 #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	_PICK(phy, 0, 2, 4, 27)
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy) \
+	(3 << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+#define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy) \
+	((pll) << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
 
 /* CNL PLL */
 #define DPLL0_ENABLE		0x46010
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
