Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCFB83E5CD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 23:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AE410E240;
	Fri, 26 Jan 2024 22:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C7A10FF44;
 Fri, 26 Jan 2024 22:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706309205; x=1737845205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TVSesfUqEzxzyfF5D+bA+zvJB7dN8qaJVVCYwayNDLc=;
 b=OpGq9UEmDrAwXOhUvtlylrgQKCzsLaWQmD8DBUnLDhmtY9nqojfBFoOd
 9F6TkLSGV3/LbruAgstKn9+61mLCcReaUL/8brQq4kgYc3NotWsf176HW
 feY3vuYiqvNDj8S/dwA8l6TD0EBcuokyZh4t6QJMBr4SDV50FZvvciPrx
 ZnWb6ihUoTDXOYtm64+iPCbbc8dDO9iuUMl+ifQ6rLydre2zkwOm+kkk/
 Tzb234CWMACGD0CSIhUkTNmUZWewzK5yRALEoObSJG2zM99l74gsJaUuU
 S0qZ5DPj9Qx9mT2hPEsO/cIpkcbdirVGecm9kscJ+0JI7QPwrDHMij5uW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9982793"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="9982793"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 14:46:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; 
   d="scan'208";a="2714170"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 14:46:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/xe2lpd: Move D2D enable/disable
Date: Fri, 26 Jan 2024 14:46:36 -0800
Message-ID: <20240126224638.4132016-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240126224638.4132016-1-lucas.demarchi@intel.com>
References: <20240126224638.4132016-1-lucas.demarchi@intel.com>
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bits to enable/disable and check state for D2D moved from
XELPDP_PORT_BUF_CTL1 to DDI_BUF_CTL (now named DDI_CTL_DE in the spec).
Make the functions mtl_ddi_disable_d2d() and mtl_ddi_enable_d2d generic
to work with multiple reg location and bitfield layout.

v2: Set/Clear XE2LPD_DDI_BUF_D2D_LINK_ENABLE in saved_port_bits when
    enabling/disabling D2D so DDI_BUF_CTL is correctly programmed in
    other places without overriding these bits (Clint)
v3: Leave saved_port_bits alone as those bits are not meant to be
    modified outside of the port initialization. Rather propagate the
    additional bit in DDI_BUF_CTL to be set when that register is
    written again after D2D is enabled.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 44 ++++++++++++++++++------
 drivers/gpu/drm/i915/i915_reg.h          |  2 ++
 2 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 12a29363e5df..188c537dbb5d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2429,13 +2429,22 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 set_bits, wait_bits;
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0,
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE);
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	if (wait_for_us((intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			 XELPDP_PORT_BUF_D2D_LINK_STATE), 100)) {
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, 0, set_bits);
+	if (wait_for_us(intel_de_read(dev_priv, reg) & wait_bits, 100)) {
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 	}
 }
@@ -2898,13 +2907,22 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
+	i915_reg_t reg;
+	u32 clr_bits, wait_bits;
 
-	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
-		     XELPDP_PORT_BUF_D2D_LINK_ENABLE, 0);
+	if (DISPLAY_VER(dev_priv) >= 20) {
+		reg = DDI_BUF_CTL(port);
+		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
+	} else {
+		reg = XELPDP_PORT_BUF_CTL1(port);
+		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
+		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
+	}
 
-	if (wait_for_us(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
-			  XELPDP_PORT_BUF_D2D_LINK_STATE), 100))
-		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for PORT_BUF_CTL %c\n",
+	intel_de_rmw(dev_priv, reg, clr_bits, 0);
+	if (wait_for_us(!(intel_de_read(dev_priv, reg) & wait_bits), 100))
+		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
 
@@ -3323,6 +3341,9 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
 
 		buf_ctl |= DDI_PORT_WIDTH(lane_count);
+
+		if (DISPLAY_VER(dev_priv) >= 20)
+		       buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
@@ -3543,6 +3564,9 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
+
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..f034b7b0f1da 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5684,6 +5684,8 @@ enum skl_power_gate {
 /* Known as DDI_CTL_DE in MTL+ */
 #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
+#define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
+#define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
 #define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
-- 
2.43.0

